provider "aws" {
  region  = "var.region"
  access_key = "AKIAYKZCGGBFQQVHYWZL"
  secret_key = "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"

}


resource "aws_s3_bucket" "s3" {
  bucket = "my-terra-11111111111167872891"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "region" {
}

