terraform {
  backend "s3" {
    bucket = "terra-test-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
