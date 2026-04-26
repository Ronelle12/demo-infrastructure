provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-s3-demo-2026"
}
