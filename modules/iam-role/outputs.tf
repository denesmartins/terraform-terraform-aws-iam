output "role_arn" {
  description = "IAM role ARN."
  value       = aws_iam_role.role.arn
}

output "role_id" {
  description = "IAM role ID."
  value       = aws_iam_role.role.id
}

output "role_name" {
  description = "IAM role name."
  value       = aws_iam_role.role.name
}