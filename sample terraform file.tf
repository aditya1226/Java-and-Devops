terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-83dcjnrrn"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform"
  }
}
