terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sunishthaa_org"
    workspaces { 
      prefix = "aws-" 
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

