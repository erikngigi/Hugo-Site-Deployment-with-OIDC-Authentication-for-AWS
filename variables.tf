variable "domain_name" {
  description = "Domain name registered under namecheap"
  type        = string
}

variable "subdomain_name" {
  description = "Name of the S3 bucket that also serves as the subdomain name"
  type        = string
}

variable "github_url" {
  description = "Github url used for OpenID connect identity provider"
  type        = string
}

variable "client_id" {
  description = "Value that identifies the application used by OpenID connect"
  type        = string
}

variable "thumbprint_list" {
  description = "A list of server certificate thumbprints for the OpenID Connect (OIDC)"
  type        = string
}

variable "github_repository" {
  description = "Github repository containing the hugo website"
  type        = string
}
