output "gitlab_elasticache_endpoint" {
  description = "Redis endpoint"
  value       = module.gitlab_ec_redis.endpoint
}

output "gitlab_elasticache_address" {
  description = "Redis address"
  value       = module.gitlab_ec_redis.host
}
