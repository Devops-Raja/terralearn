# This Terraform configuration creates an EC2 instance in the AWS region ap-south-1
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
    region="ap-south-1"
}

resource "aws_instance" "ec2instance" {
  ami           = "ami-0f918f7e67a3323f0" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  key_name      = "devopsraja" # Replace with your key pair name
  subnet_id     = "subnet-0268fb40539332a05" # Replace with your subnet ID
}