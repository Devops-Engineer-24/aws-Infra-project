output "ec2_public_ip" {  # Renaming output to avoid conflict
  value = aws_instance.example.public_ip
}
