terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sunishthaa_org"

    workspaces {
      prefix = "aws-"
    }
  }
}
