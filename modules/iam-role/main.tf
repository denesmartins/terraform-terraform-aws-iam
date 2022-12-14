locals {
  inline_policy       = can(jsondecode(var.inline_policy)) ? var.inline_policy : jsonencode(var.inline_policy)
  inline_policy_count = var.inline_policy == "" ? 0 : 1
  role_name           = var.role_name == "" ? null : var.role_name
  role_prefix         = var.role_name == "" ? var.role_prefix : null
}

resource "aws_iam_role" "role" {
  assume_role_policy    = var.assume_role_policy
  description           = var.role_description
  name                  = local.role_name
  name_prefix           = local.role_prefix
  path                  = var.role_path
  permissions_boundary  = var.permissions_boundary
  max_session_duration  = var.max_session_duration
  tags                  = var.tags
  force_detach_policies = true

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_iam_role_policy" "inline_policy" {
  count = local.inline_policy_count

  role   = aws_iam_role.role.id
  policy = local.inline_policy
}

resource "aws_iam_role_policy_attachment" "managed_policy" {
  count = length(var.policy_arns)

  role       = aws_iam_role.role.id
  policy_arn = var.policy_arns[count.index]
}