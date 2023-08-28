terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = "~> 1.5.6"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b0ea68c435eb488d"
  instance_type = "t2.micro"

  tags = {
    Name = "Create_EC2_Instance"
  }
}

