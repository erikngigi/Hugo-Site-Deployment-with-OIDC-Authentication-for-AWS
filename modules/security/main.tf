resource "aws_iam_openid_connect_provider" "github_oidc" {
  url             = var.github_url
  client_id_list  = [var.client_id]
  thumbprint_list = [var.thumbprint_list]
}
