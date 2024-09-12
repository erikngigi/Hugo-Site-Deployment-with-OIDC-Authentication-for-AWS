output "iam_role_arn" {
  value = module.security_module.iam_role_arn
}

output "hugo_site_endpoint" {
  value = format("http://%s", module.storage_module.hugo_site_endpoint)
}

output "hugo_site_domain" {
  value = format("http://%s", module.storage_module.hugo_site_domain)
}

output "route53_name_servers" {
  value = module.network_module.route53_name_servers
}
