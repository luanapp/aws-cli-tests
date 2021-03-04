variable "aws_region" {
  default = "us-east-1"
}

variable "cf_s3_bucket" {
  default = "cloudfront-test"
}

variable "tags" {
  type = map(string)
  description = "Contains the tags which will be used in ALL created resources"
  default = {}
}

locals {
  default_tags = {
    application = "my-application"
    env = "development"
  }
  tags = merge(local.default_tags, var.tags)
}