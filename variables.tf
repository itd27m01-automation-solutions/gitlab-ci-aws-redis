variable "environment" {
  description = "Environment name to create redis for"
  type        = string
}

variable "gitlab_vpc_id" {
  description = "VPC ID to create redis on"
  type        = string
}

variable "gitlab_redis_sg_ids" {
  description = "List of SGs IDs for redis instance"
  type        = list(string)
}

variable "gitlab_availability_zones" {
  description = "List of AZs for redis instance"
  type        = list(string)
}

variable "gitlab_elasticache_subnet_group_name" {
  description = "Subnet group name to use for redis"
  type        = string
}