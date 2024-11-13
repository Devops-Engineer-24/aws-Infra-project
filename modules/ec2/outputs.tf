# modules/ec2/outputs.tf
output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value = aws_instance.example[*].public_ip  # Access all instances' public IPs using the count.index
}
