provider "aws" {

    region     = "us-east-1"
}
resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 1
}

