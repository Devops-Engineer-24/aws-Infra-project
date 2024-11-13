# outputs.tf

output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The Subnet ID"
  value       = module.vpc.subnet_id
}

# main.tf
output "ec2_public_ips" {
  description = "Public IPs of EC2 instances from the ec2 module"
  value = module.ec2.ec2_public_ips  # Access the output defined in the ec2 module
}
