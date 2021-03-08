module "cloudfront_example" {
  source = "./modules/cloudfront"

  s3_bucket = var.cf_s3_bucket
  s3_files = {
    "index.html" = {
      key = "index.html"
      source = "./files/index.html"
      content_type = "text/html"
    },
    "immutable/test.html" = {
      key = "immutable/v1/test.html"
      source = "./files/immutable/test.html"
      content_type = "text/html"
    },
    "mutable/test.html" = {
      key = "mutable/v1/test.html"
      source = "./files/mutable/test.html"
      content_type = "text/html"
    },
    "immutable/new.html" = {
      key = "immutable/v2/new.html"
      source = "./files/immutable/new.html"
      content_type = "text/html"
    },
    "mutable/new.html" = {
      key = "mutable/v2/new.html"
      source = "./files/mutable/new.html"
      content_type = "text/html"
    },
    "api/v1/any/hello.json" = {
      key = "api/v1/any/hello.json"
      source = "./files/api/v1/any/hello.json"
      content_type = "application/json"
    },
    "api/v2/any/hello.json" = {
      key = "api/v2/any/hello.json"
      source = "./files/api/v2/any/hello.json"
      content_type = "application/json"
    }
  }

  tags = local.tags
}