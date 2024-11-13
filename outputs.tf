output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = module.ec2.instance_id
}
