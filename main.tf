module "storage_module" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
}

module "security_module" {
  source            = "./modules/security"
  github_url        = var.github_url
  client_id         = var.client_id
  thumbprint_list   = var.thumbprint_list
  github_repository = var.github_repository
  bucket_name       = var.bucket_name
}
