variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
