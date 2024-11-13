output "s3_bucket_name" {
  value = aws_s3_bucket.this.bucket  # Make sure 'this' matches the resource name in the s3 module
}

