resource "aws_iam_openid_connect_provider" "github_oidc" {
  url             = var.github_url
  client_id_list  = [var.client_id]
  thumbprint_list = [var.thumbprint_list]
}

resource "aws_iam_policy" "github_actions_policy" {
  name        = "S3GithubActionsPolicy"
  description = "Policy to allow GitHub Actions to put objects in a S3 bucket."
  policy = templatefile("${path.module}/templates/s3_github_actions_policy.json.tmpl",
  { subdomain_name = var.subdomain_name })
}

resource "aws_iam_role" "github_action_role" {
  name                = "S3GithubActionsRole"
  description         = "Role used to authenticate Github Actions"
  managed_policy_arns = [aws_iam_policy.github_actions_policy.arn]
  assume_role_policy = templatefile("${path.module}/templates/s3_github_actions_role.json.tmpl",
    { github_oidc       = aws_iam_openid_connect_provider.github_oidc.arn,
      client_id         = var.client_id,
      github_repository = var.github_repository
  })
}
