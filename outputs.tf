# outputs.tf

output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The Subnet ID"
  value       = module.vpc.subnet_id
}
