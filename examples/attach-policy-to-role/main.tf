provider "aws" {
}

module "role" {
  source = "../../modules/attach-policy-to-role"

  role_name          = var.role_name
  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
  ]
}