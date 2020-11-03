provider "aws" {

    region     = "us-east-1"
}
resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 1
}

resource "aws_instance" "myec2" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"

    tags = {
    Name = "test_backend"
  }
