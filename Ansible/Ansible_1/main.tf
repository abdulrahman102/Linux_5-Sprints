terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.2"  # Replace with the desired version
    }
  }
}    
provider "aws" {
    region = "us-east-1"
}
data "aws_availability_zones" "available" {}
module "vpc" {
  source               = "terraform-aws-modules/vpc/aws"
  name                 = "vpc-of-ansible_task"
  cidr                 = "10.0.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = ["10.0.1.0/24"]
  public_subnets       = ["10.0.2.0/24"] 
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  tags                 =  {
    Name = "VPC_ansible"
  }
}

locals {
  list_of_subnets = [module.vpc.public_subnets.0,module.vpc.private_subnets.0]
  outside_cidr_block = "0.0.0.0/0"

}



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






resource "aws_security_group" "sprints_sg" {
  name = "OPEN"
  vpc_id      = module.vpc.vpc_id

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
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [local.outside_cidr_block]
  }

  ingress {
    from_port   = 8090
    to_port     = 8090
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



resource "aws_instance" "instances" {
  count = 2
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = local.list_of_subnets[count.index]
  vpc_security_group_ids = [ aws_security_group.sprints_sg.id ] 
  key_name = "sprint_1"
}

output "public_instance_ip" {
  value = aws_instance.instances[0].public_ip
}

output "private_instance_ip" {
  value = aws_instance.instances[1].private_ip
}
