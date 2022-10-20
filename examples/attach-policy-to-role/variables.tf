variable "role_name" {
  default = "ec2roletest"
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
        "Service": "s3.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
