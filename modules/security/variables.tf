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
