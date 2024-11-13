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

terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "path/to/your/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "your-lock-table"  # Optional, for state locking
  }
}



