//conection with the aws provider
terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
      }
    }
    
  required_version = ">= 0.12"
}

provider "aws" {
    region = var.region_aws
}

resource "aws_instance" "app_server" {
    ami = "ami-017fecd1353bcc96e"
    instance_type = var.type_instance
    key_name = var.key

    tags = {
        Name = var.name_instance
    }
}

resource "aws_key_pair" "keySSH" {
    key_name = var.key
    public_key = file("${var.key}.pub")
}

output "public_ip" {
  value = aws_instance.app_server.public_ip
}