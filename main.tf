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

# New S3 Bucket Resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-terraform-s3-bucket-name"  # Ensure this name is globally unique
  acl    = "private"  # Access control list (ACL), can be 'private', 'public-read', etc.

  versioning {
    enabled = true  # Enable versioning on the S3 bucket
  }

  tags = {
    Name        = "MyS3Bucket"
  }
}
