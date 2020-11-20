module "gitlab_ec_redis" {
  source  = "cloudposse/elasticache-redis/aws"
  version = "0.25.0"

  environment = var.environment

  name    = "gitlab-${var.environment}-redis"
  vpc_id = var.gitlab_vpc_id

  engine_version = "5.0.6"
  family         = "redis5.0"

  use_existing_security_groups = true
  existing_security_groups     = var.gitlab_redis_sg_ids

  availability_zones = var.gitlab_availability_zones
  cluster_size       = length(var.gitlab_availability_zones)

  elasticache_subnet_group_name = var.gitlab_elasticache_subnet_group_name
}

resource "aws_ssm_parameter" "gitlab_elasticache_endpoint" {
  name        = "/gitlab/${var.environment}/redis/endpoint"
  description = "The redis endpoint"
  type        = "String"
  value       = module.gitlab_ec_redis.endpoint

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
