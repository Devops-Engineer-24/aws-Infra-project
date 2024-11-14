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

