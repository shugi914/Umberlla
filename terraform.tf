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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpL5a1/8DEzelwl3g3blIIjp2rmkJ+dVbst6WaVjIuZPTN3KRKAYUW6ACURNBA7mqCJd6SOzJBhgOK6gR6HcsasH99M5HkZiffhou8x+/PzAl6QYZ26kwUcKlW08BlzbOLYOy3HvaWpqmUNhBCc2LcSXVR6OVhNlgLxxfBH3Po0DBiFW2r2/ieb3V+B+CtmfO3pK4gbtTgl/dqNvmtlY1ie10v3UWe8Vw1ADvVu6JObiIY+ltCqRmPvblnBrryPG+Afkr/VDC325dPDy7BcguCRG2q5S6NrxjTC4drn8xqwf7N4NvVoOcsHhDanGiNQSDTNuGX6sXQt1ACksrM1p22uYLiMTP97gSPwwIEFFyFTP2d5o2z7/g4qirT/qyPjFY74RsKp+W8WYKadY6RBzZ+liVxTWcHscbEv3OzQ1eG6h8lQur6AGljdVHHxpmgpGv/VyNnqfHhIyDtO1RAyTyon2vlRUJPMoNGhD1WZHL9PIOTP6ouxCGXYatPl7jwH9s= lior@lior-virtual-machine"
 }


resource "aws_instance" "first_instance" {
  ami = "ami-0f7a9fd075d35c1ca"
  instance_type = "t2.micro"
  key_name  = "${aws_key_pair.new_key.key_name}"
  tags   = {
    Name = "Packer Builder"
  }
}
