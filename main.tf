provider "aws" {
  region  = "var.region"
  access_key = "AKIAYKZCGGBFQQVHYWZL"
  secret_key = "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"

}


resource "aws_s3_bucket_acl" "" {
  bucket = "my-terra-11111111111167872891"
  acl    = "private"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}

variable "region" {
}

