output "gitlab_elasticache_endpoint" {
  description = "Redis endpoint"
  value       = module.gitlab_ec_redis.endpoint
}
