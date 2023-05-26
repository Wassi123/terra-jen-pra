provider "aws" {
  region  = "us-east-2"
  access_key = "AKIAYKZCGGBFQQVHYWZL"
  secret_key = "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"

}


resource "aws_s3_bucket" "b" {
  bucket = "my-terra-1"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

