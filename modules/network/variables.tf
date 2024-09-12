variable "domain_name" {
  description = "Domain name registered under namecheap"
  type        = string
}

variable "subdomain_name" {
  description = "Name of the S3 bucket that also serves as the subdomain name"
  type        = string
}

variable "website_endpoint" {
  description = "Website endpoint generated from the S3 bucket hosting the files"
  type        = string
}
