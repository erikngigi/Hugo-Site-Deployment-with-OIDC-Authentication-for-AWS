resource "aws_s3_bucket" "hugo_site_bucket" {
  bucket        = var.subdomain_name
  force_destroy = true
}

resource "aws_s3_bucket_policy" "hugo_site_bucket_policy" {
  bucket = aws_s3_bucket.hugo_site_bucket.id
  policy = templatefile("${path.module}/templates/hugo_bucket_policy.json.tmpl",
  { subdomain_name = aws_s3_bucket.hugo_site_bucket.bucket })
}

resource "aws_s3_bucket_website_configuration" "hugo_site_configuration" {
  bucket = aws_s3_bucket.hugo_site_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html"
  }
}

resource "aws_s3_bucket_public_access_block" "hugo_site_configuration" {
  bucket = aws_s3_bucket.hugo_site_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "hugo_site_acl_ownership" {
  bucket = aws_s3_bucket.hugo_site_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
  depends_on = [aws_s3_bucket_public_access_block.hugo_site_configuration]
}

resource "aws_s3_bucket_acl" "hugo_bucket_acl" {
  bucket     = aws_s3_bucket.hugo_site_bucket.id
  acl        = "public-read"
  depends_on = [aws_s3_bucket_ownership_controls.hugo_site_acl_ownership]
}
