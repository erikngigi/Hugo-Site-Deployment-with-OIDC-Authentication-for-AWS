resource "aws_route53_zone" "namecheap_domain" {
  name          = var.domain_name
  force_destroy = true
  comment       = "Hosted zone for the domain managed via namecheap"
}

resource "aws_route53_record" "hugo_site_subdomain" {
  zone_id = aws_route53_zone.namecheap_domain.id
  name    = var.subdomain_name
  type    = "CNAME"
  ttl     = "300"
  records = [var.website_endpoint]
}
