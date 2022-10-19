provider "aws" {
}

module "role" {
  source = "../../modules/iam-role"

  role_name          = var.role_name
  role_prefix        = var.role_prefix
  role_path          = var.role_path
  assume_role_policy = var.assume_role_policy

  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
  ]
}