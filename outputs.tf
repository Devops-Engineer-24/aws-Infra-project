# outputs.tf

output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The Subnet ID"
  value       = module.vpc.subnet_id
}

# modules/ec2/outputs.tf
output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value =  module.ec2.aws_instance.example[*].public_ip  # Access all instances' public IPs using the count.index
}
