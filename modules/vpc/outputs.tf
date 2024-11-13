# modules/vpc/outputs.tf

output "vpc_id" {
  description = "The VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The Subnet ID"
  value       = aws_subnet.main.id
}
