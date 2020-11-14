# Redis terraform module for GitLab CI on AWS

Deploys Redis server on AWS ElastiCache service for GitLab CI deployment on AWS

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.14 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment name to create redis for | `string` | n/a | yes |
| gitlab\_availability\_zones | List of AZs for redis instance | `list(string)` | n/a | yes |
| gitlab\_elasticache\_subnet\_group\_name | Subnet group name to use for redis | `string` | n/a | yes |
| gitlab\_redis\_sg\_ids | List of SGs IDs for redis instance | `list(string)` | n/a | yes |
| gitlab\_vpc\_id | VPC ID to create redis on | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| gitlab\_elasticache\_endpoint | Redis endpoint |

