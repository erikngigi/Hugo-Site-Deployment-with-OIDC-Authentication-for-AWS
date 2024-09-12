output "iam_role_arn" {
  value = module.security_module.iam_role_arn
}

output "hugo_site_endpoint" {
  value = format("http://%s", module.storage_module.hugo_site_endpoint)
}
