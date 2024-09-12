output "iam_role_arn" {
  description = "ARN value of the github action IAM role"
  value       = aws_iam_role.github_action_role.arn
}
