data "terraform_remote_state" "ec2" {
  backend = "remote"
  config = {
    organization = "Sunishthaa_org"
    workspaces = {
      prefix = "aws-"
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
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = data.terraform_remote_state.ec2.outputs.address
  }
}
