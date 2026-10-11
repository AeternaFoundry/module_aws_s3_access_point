output "s3_access_points_id" {
  description = "Map of id values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_access_points_account_id" {
  description = "Map of account_id values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "s3_access_points_alias" {
  description = "Map of alias values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "s3_access_points_arn" {
  description = "Map of arn values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "s3_access_points_bucket" {
  description = "Map of bucket values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_access_points_bucket_account_id" {
  description = "Map of bucket_account_id values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.bucket_account_id if v.bucket_account_id != null && length(v.bucket_account_id) > 0 }
}
output "s3_access_points_domain_name" {
  description = "Map of domain_name values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "s3_access_points_endpoints" {
  description = "Map of endpoints values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "s3_access_points_has_public_access_policy" {
  description = "Map of has_public_access_policy values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.has_public_access_policy if v.has_public_access_policy != null }
}
output "s3_access_points_name" {
  description = "Map of name values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.name if v.name != null && length(v.name) > 0 }
}
output "s3_access_points_network_origin" {
  description = "Map of network_origin values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.network_origin if v.network_origin != null && length(v.network_origin) > 0 }
}
output "s3_access_points_policy" {
  description = "Map of policy values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "s3_access_points_public_access_block_configuration" {
  description = "Map of public_access_block_configuration values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => one(v.public_access_block_configuration) if v.public_access_block_configuration != null && length(v.public_access_block_configuration) > 0 }
}
output "s3_access_points_region" {
  description = "Map of region values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_access_points_tags" {
  description = "Map of tags values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "s3_access_points_tags_all" {
  description = "Map of tags_all values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "s3_access_points_vpc_configuration" {
  description = "Map of vpc_configuration values across all s3_access_points, keyed the same as var.s3_access_points"
  value       = { for k, v in aws_s3_access_point.s3_access_points : k => one(v.vpc_configuration) if v.vpc_configuration != null && length(v.vpc_configuration) > 0 }
}

