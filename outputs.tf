output "cloudwatch_log_storage_tier_policies_id" {
  description = "Map of id values across all cloudwatch_log_storage_tier_policies, keyed the same as var.cloudwatch_log_storage_tier_policies"
  value       = { for k, v in aws_cloudwatch_log_storage_tier_policy.cloudwatch_log_storage_tier_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_log_storage_tier_policies_region" {
  description = "Map of region values across all cloudwatch_log_storage_tier_policies, keyed the same as var.cloudwatch_log_storage_tier_policies"
  value       = { for k, v in aws_cloudwatch_log_storage_tier_policy.cloudwatch_log_storage_tier_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_log_storage_tier_policies_storage_tier" {
  description = "Map of storage_tier values across all cloudwatch_log_storage_tier_policies, keyed the same as var.cloudwatch_log_storage_tier_policies"
  value       = { for k, v in aws_cloudwatch_log_storage_tier_policy.cloudwatch_log_storage_tier_policies : k => v.storage_tier if v.storage_tier != null && length(v.storage_tier) > 0 }
}

