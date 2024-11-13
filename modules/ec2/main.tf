# modules/ec2/main.tf

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.instance_count
  tags = {
    Name = "TerraformInstance"
  }
}

# modules/ec2/outputs.tf
output "ec2_public_ip_first" {
  description = "The public IP of the first EC2 instance"
  value = aws_instance.example[0].public_ip  # First instance
}

output "ec2_public_ip_second" {
  description = "The public IP of the second EC2 instance"
  value = aws_instance.example[1].public_ip  # Second instance
}
