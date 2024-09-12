output "hugo_site_endpoint" {
  description = "Website endpoint for the hugo website"
  value       = aws_s3_bucket_website_configuration.hugo_site_configuration.website_endpoint
}

output "hugo_site_domain" {
  description = "Website domain for the hugo website"
  value       = aws_s3_bucket.hugo_site_bucket.bucket
}
