provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform2-state"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "s3-lock-mech"
  }
}

resource "aws_s3_bucket" "demo" {
  bucket = "skalrops-dev-demo-bucket"
}
