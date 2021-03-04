output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "cloudfront_arn" {
  value = aws_cloudfront_distribution.this.arn
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.this.domain_name
}

output "cloudfront_etag" {
  value = aws_cloudfront_distribution.this.etag
}