variable "s3_bucket" {
  description = "S3 bucket to be used as the CloudFront content"
}

variable "aliases" {
  type = list(string)
  default = []
}

variable "s3_files" {
  type = map(object({
    key = string
    source = string
  }))
}

variable "tags" {
  type = map(string)
  description = "Contains the tags which will be used in ALL created cloudfront resources, including S3"
}

