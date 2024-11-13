output "s3_bucket_name" {
  value = aws_s3_bucket.this.bucket  # Replace 'this' with the actual name of the resource in your s3 module
}
