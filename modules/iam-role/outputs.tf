output "name" {
  description = "IAM Role name."
  value       = aws_iam_role.this.name
}

output "arn" {
  description = "The ARN assigned by AWS for this role."
  value       = aws_iam_role.this.arn
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_role.this.unique_id
}

output "description" {
  description = "The description of the role."
  value       = aws_iam_role.this.description
}

output "policies" {
  description = "List of ARNs of IAM policies which are atached to IAM role."
  value       = var.policies
}

output "inline_policies" {
  description = "List of names of inline IAM polices which are attached to IAM role."
  value       = keys(var.inline_policies)
}

output "instance_profile_name" {
  description = "IAM Instance Profile name."
  value       = element(concat(aws_iam_instance_profile.this.*.name, [""]), 0)
}

output "instance_profile_arn" {
  description = "The ARN assigned by AWS for the Instance Profile."
  value       = element(concat(aws_iam_instance_profile.this.*.arn, [""]), 0)
}

output "instance_profile_unique_id" {
  description = "The unique ID assigned by AWS for the Instance Profile."
  value       = element(concat(aws_iam_instance_profile.this.*.unique_id, [""]), 0)
}