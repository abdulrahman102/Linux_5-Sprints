# Installing the proiveders plugins
provider "aws" {
    region = "us-east-1"
}

# Assign local variable to use in the code
locals {
  outside_cidr_block = "0.0.0.0/0"
}

# Creating vpc
resource "aws_vpc" "sprints_vpc" {
  cidr_block = var.vpc_cidr_block
  
  tags = {
    Name = "sprints_vpc"
  }
}

# Creating 2 subnets for public and private
resource "aws_subnet" "sprints_subnet" {
  count = length(var.subnets_type)
  vpc_id = aws_vpc.sprints_vpc.id
  cidr_block = var.subnet_cidr[count.index]
  tags = {
    Name = "sprints_${var.subnets_type[count.index]}_subnet"
  }
  
} 

# Creating Internet gateway for public subnet to use
resource "aws_internet_gateway" "sprints_ig" {
  vpc_id = aws_vpc.sprints_vpc.id
  tags = {
    Name = "sprints_ig"
  }
}

# Getting Elastic ip and assign it to nat gateway for private subnet to use
resource "aws_eip" "sprints_eip" {}
resource "aws_nat_gateway" "sprints_ng" {
  allocation_id = aws_eip.sprints_eip.id
  subnet_id = aws_subnet.sprints_subnet[0].id
  
}

# Creating route table for public subnet
resource "aws_route_table" "sprints_rt_public" {
  vpc_id = aws_vpc.sprints_vpc.id

  route {
    cidr_block = local.outside_cidr_block
    gateway_id = aws_internet_gateway.sprints_ig.id
      }
  
}

# Creating route table for private subnet
resource "aws_route_table" "sprints_rt_private" {
  vpc_id = aws_vpc.sprints_vpc.id

  route  {
    cidr_block = local.outside_cidr_block
    nat_gateway_id = aws_nat_gateway.sprints_ng.id
  }

}

# Assigning the 2 route tables to the subnets
resource "aws_route_table_association" "sprints_rta_public" {
  subnet_id = aws_subnet.sprints_subnet[0].id
  route_table_id = aws_route_table.sprints_rt_public.id
  
}

resource "aws_route_table_association" "sprints_rta_private" {
  subnet_id = aws_subnet.sprints_subnet[1].id
  route_table_id = aws_route_table.sprints_rt_private.id
  
}



# Creating security group to allow http and ssh
resource "aws_security_group" "sprints_sg" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.sprints_vpc.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [local.outside_cidr_block]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [local.outside_cidr_block]
  }


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [local.outside_cidr_block]
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = [local.outside_cidr_block]
  }
  tags = {
    Name = "Sprints_sg"
  }
}



# Getting AMI data
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical 
}

output "name" {
  value = data.aws_ami.ubuntu.id
}


# Creating the instances with provided information
resource "aws_instance" "name" {
  count = 2
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  associate_public_ip_address = var.public_ip_asc[count.index]
  subnet_id = aws_subnet.sprints_subnet[count.index].id
  security_groups = [aws_security_group.sprints_sg.id]
    user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
EOF
}

# Output both public ip and private ip for the instances
output "public_ip_output" {
  value = aws_instance.name[0].public_ip
}

output "private_ip_output" {
  value = aws_instance.name[1].private_ip
  
}