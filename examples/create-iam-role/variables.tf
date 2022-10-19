variable "region" {
  default = "us-east-1"
}

variable "role_name" {
  default = ""
}

variable "role_prefix" {
  default = "test-"
}

variable "role_path" {
  default = "/my-role-path/"
}

variable "assume_role_policy" {
  default = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}