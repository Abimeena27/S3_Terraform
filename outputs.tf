output "bucket_name" {
  value = aws_s3_bucket.mys3b.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.mys3b.arn
}