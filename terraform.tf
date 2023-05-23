terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_key_pair" "new_key" {
  key_name   = "newkey"
  public_key = "INSERT YOUR PUBKEY"
 }


resource "aws_instance" "first_instance" {
  ami = "ami-0f7a9fd075d35c1ca"
  instance_type = "t2.micro"
  key_name  = "${aws_key_pair.new_key.key_name}"
  tags   = {
    Name = "Packer Builder"
  }
}
