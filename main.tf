provider "aws" {
  region  = "var.region"
  access_key = "AKIAYKZCGGBFQQVHYWZL"
  secret_key = "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"

}


resource "aws_s3_bucket" "acl" {
  bucket = "my-terra-111111111111"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "region" {
}

