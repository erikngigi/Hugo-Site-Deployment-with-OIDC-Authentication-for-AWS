module "security_module" {
  source          = "./modules/security"
  github_url      = var.github_url
  client_id       = var.client_id
  thumbprint_list = var.thumbprint_list
}
