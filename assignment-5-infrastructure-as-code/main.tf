terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  profile = "example_profile"
}

locals {
  key_pair = "p-bilinskiy"
  security_groups = ["sg-01b21b7b8d6123bf2"]
}

# Create a VPC
resource "aws_instance" "app_server" {
  count                   = 2
  ami                     = data.aws_ami.ubuntu.id
  instance_type           = var.instance_type
  key_name                = local.key_pair
  vpc_security_group_ids  = local.security_groups

  tags = {
    Name = "ExampleAppServerInstance"
  }
}