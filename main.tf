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




