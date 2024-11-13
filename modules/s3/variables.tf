# modules/s3/variables.tf
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The ACL of the S3 bucket (private, public-read, etc.)"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "environment" {
  description = "The environment tag for the S3 bucket (e.g., dev, prod)"
  type        = string
}
