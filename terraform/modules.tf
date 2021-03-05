module "cloudfront_example" {
  source = "./modules/cloudfront"

  s3_bucket = var.cf_s3_bucket
  s3_files = {
    "index.html" = {
      key = "index.html"
      source = "./files/index.html"
    },
    "immutable/test.html" = {
      key = "immutable/test.html"
      source = "./files/immutable/test.html"
    },
    "mutable/test.html" = {
      key = "mutable/test.html"
      source = "./files/mutable/test.html"
    },
    "immutable/new.html" = {
      key = "immutable/new.html"
      source = "./files/immutable/new.html"
    },
    "mutable/new.html" = {
      key = "mutable/new.html"
      source = "./files/mutable/new.html"
    }
  }

  tags = local.tags
}