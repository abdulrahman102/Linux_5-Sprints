# Creating vpc
resource "aws_vpc" "sprints_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "Sprints"
    }
}


# Creating Internt gateway for this vpc
resource "aws_internet_gateway" "sprints_gw" {
  vpc_id = aws_vpc.sprints_vpc.id

  tags = {
    Name = "Sprints"
  }
}


# Creating subnet inside the vpc
resource "aws_subnet" "sprints_subnet" {
    vpc_id = aws_vpc.sprints_vpc.id
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "Sprints"
    }
}


# Creating a route table refering to the internet gateway
resource "aws_route_table" "sprints_rt" {
  vpc_id = aws_vpc.sprints_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sprints_gw.id
  }

  tags = {
    Name = "Sprints"
  }
}

# Creating association to link route table with the subnet
resource "aws_route_table_association" "sprints_rta" {
  subnet_id      = aws_subnet.sprints_subnet.id
  route_table_id = aws_route_table.sprints_rt.id
}


# Creating ami search to get the ubuntu ami id
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


# Creating a security group to allow http and https and ssh
resource "aws_security_group" "sprints_sg" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.sprints_vpc.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Sprints"
  }
}


# Creating ec2 instance connected to all the created resources and providing a script to install apache2
resource "aws_instance" "sprints_ec2" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    associate_public_ip_address = true
    subnet_id = aws_subnet.sprints_subnet.id
    security_groups = [aws_security_group.sprints_sg.id]
      user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
EOF
    tags = {
        Name = "Sprints"
    }

}

