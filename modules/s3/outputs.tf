output "s3_bucket_name" {
  value = aws_s3_bucket.this.bucket  # This references the resource defined in the s3 module itself
}
