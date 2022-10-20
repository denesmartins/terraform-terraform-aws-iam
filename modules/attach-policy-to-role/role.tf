# Iterating over the managed_policy variable and apply
# each managed policy for that particular role.
locals {
  policy_arn = { for s in var.policy_arns : s => s }
}

resource "aws_iam_role_policy_attachment" "managed_role_policy_attachment" {
  for_each   = local.policy_arn
  role       = var.role_name
  policy_arn = each.value
}

# Create Custom Policy for Managing Resources outside of AWS Managed Policy
# Only runs when the inline_policy value is set
resource "aws_iam_policy" "custom_policy" {
  count       = var.inline_policy == "" ? 0 : 1
  policy      = var.inline_policy
  name        = format("%s-customer-managed", var.role_name)
  description = "Managed by Terraform"
}

# Attaches the custom policy to the role being managed (var.role_name)
resource "aws_iam_role_policy_attachment" "custom_role_policy_attachment" {
  count      = var.inline_policy == "" ? 0 : 1
  role       = var.role_name
  policy_arn = aws_iam_policy.custom_policy[count.index].arn
}