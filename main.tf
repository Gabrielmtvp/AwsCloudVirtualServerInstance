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
    region = "us-west-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-017fecd1353bcc96e"
    instance_type = "t2.micro"
    key_name = "IaC-GabrielDev"

    tags = {
        Name = "GabrielDev - AWS Instance"
    }
}