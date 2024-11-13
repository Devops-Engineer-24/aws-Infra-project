# main.tf

module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
}

module "ec2" {
  source      = "./modules/ec2"
  ami_id      = var.ami_id
  instance_type = var.instance_type
  subnet_id   = module.vpc.subnet_id
}

module "s3" {
  source        = "./modules/s3"
  bucket_name   = "my-unique-bucket-name"  # Ensure the name is globally unique
  acl           = "private"
  versioning_enabled = true
  environment   = "dev"
}

output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.ec2.public_ip
}

output "s3_bucket_name" {
  value       = module.s3.s3_bucket_name
  description = "The name of the S3 bucket"
}
