# modules/s3/main.tf
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.acl

  versioning {
    enabled = var.versioning_enabled
  }

  tags = {
    Name        = "Terraform-S3-Bucket"
    Environment = var.environment
  }
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.this.bucket
  description = "The name of the S3 bucket"
}
