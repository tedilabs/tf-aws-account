# iam-role

This module creates following resources.

- `aws_iam_role`
- `aws_iam_role_policy` (optional)
- `aws_iam_role_policy_attachment` (optional)
- `aws_iam_instance_profile` (optional)

## Notes

**If possible, always use PGP encryption to prevent Terraform from keeping unencrypted password and access secret key in state file.**

### Keybase

When `pgp_key` is specified as `keybase:username`, make sure that that user has already uploaded public key to keybase.io. For example, user with username `test` has done it properly and you can [verify it here](https://keybase.io/test/pgp_keys.asc).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.27 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.27 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Desired name for the IAM role. | `string` | n/a | yes |
| description | The description of the role. | `string` | `""` | no |
| force\_detach\_policies | Specifies to force detaching any policies the role has before destroying it. | `bool` | `false` | no |
| inline\_policies | Map of inline IAM policies to attach to IAM role. (`name` => `policy`). | `map(string)` | `{}` | no |
| instance\_profile\_enabled | Controls if Instance Profile should be created. | `bool` | `false` | no |
| max\_session\_duration | Maximum CLI/API session duration in seconds between 3600 and 43200. | `number` | `3600` | no |
| path | Desired path for the IAM role. | `string` | `"/"` | no |
| permissions\_boundary | The ARN of the policy that is used to set the permissions boundary for the role. | `string` | `""` | no |
| policies | List of IAM policies ARNs to attach to IAM role. | `list(string)` | `[]` | no |
| tags | A map of tags to add to all resources. | `map(string)` | `{}` | no |
| trusted\_iam\_entities | ARNs of AWS IAM entities who can assume the role. | `list(string)` | `[]` | no |
| trusted\_services | AWS Services that can assume the role. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN assigned by AWS for this role. |
| description | The description of the role. |
| inline\_policies | List of names of inline IAM polices which are attached to IAM role. |
| instance\_profile\_arn | The ARN assigned by AWS for the Instance Profile. |
| instance\_profile\_name | IAM Instance Profile name. |
| instance\_profile\_unique\_id | The unique ID assigned by AWS for the Instance Profile. |
| name | IAM Role name. |
| policies | List of ARNs of IAM policies which are atached to IAM role. |
| unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->