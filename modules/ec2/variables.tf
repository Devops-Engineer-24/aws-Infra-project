# modules/ec2/variables.tf

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID"
  type        = string
}

# modules/ec2/variables.tf
variable "instance_count" {
  description = "The number of EC2 instances to create"
  type        = number
  default     = 2  # Optional default value
}

