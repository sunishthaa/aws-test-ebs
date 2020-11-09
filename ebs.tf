data "terraform_remote_state" "foo" {
  backend = "remote"

  config = {
    organization = "Sunishthaa_org"

    workspaces = {
      name = "aws-ec2"
    }
  }
}

provider "aws" {

    region     = "us-east-1"
}
resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 1
}
resource "aws_instance" "web" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"

  tags = {
    Name = "secnd"
  }
}
