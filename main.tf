provider "aws" {
  region  = "us-east-2"
}


resource "aws_s3_bucket" "b" {
  bucket = "my-terra-1"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

