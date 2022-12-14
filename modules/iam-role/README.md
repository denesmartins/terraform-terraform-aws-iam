# IAM Role Module

This folder contains a [Terraform](https://www.terraform.io/) module that creates an IAM Role.

## How to use this module?

This folder defines a [Terraform module](https://www.terraform.io/docs/modules/usage.html), which you can use in your code by adding a module configuration and setting its source parameter to URL of this folder:

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.inline_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.managed_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | The policy that grants an entity permission to assume the role. | `string` | n/a | yes |
| <a name="input_inline_policy"></a> [inline\_policy](#input\_inline\_policy) | Custom policy to attach in the role as inline policy. | `string` | `""` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | The maximum session duration (in seconds) that you want to set for the specified role. | `number` | `3600` | no |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | The ARN of the policy that is used to set the permissions boundary for the role. | `string` | `null` | no |
| <a name="input_policy_arns"></a> [policy\_arns](#input\_policy\_arns) | List of policy ARNs to attach in the role. | `list(string)` | `[]` | no |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | The description of the role. | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the role. If omitted, role\_prefix is used. | `string` | `""` | no |
| <a name="input_role_path"></a> [role\_path](#input\_role\_path) | IAM role path. | `string` | `"/"` | no |
| <a name="input_role_prefix"></a> [role\_prefix](#input\_role\_prefix) | Creates a unique name beginning with the specified prefix. Ignored when role\_name is informed. | `string` | `"runway-"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add into all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | IAM role ARN. |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | IAM role ID. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | IAM role name. |
<!-- END_TF_DOCS -->