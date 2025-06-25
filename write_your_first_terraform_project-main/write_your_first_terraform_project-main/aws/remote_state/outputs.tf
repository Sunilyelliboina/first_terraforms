output "bucket_name" {
  value       = aws_s3_bucket.terraform_demo.bucket
  description = "The name of the S3 bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.terraform_demo.arn
  description = "The ARN of the S3 bucket"
}

output "bucket_region" {
  value       = aws_s3_bucket.terraform_demo.region
  description = "The AWS region where the S3 bucket is located"
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.terraform_demo.bucket_domain_name
  description = "The domain name of the S3 bucket"
}

output "bucket_hosted_zone_id" {
  value       = aws_s3_bucket.terraform_demo.hosted_zone_id
  description = "The Route 53 hosted zone ID for the S3 bucket"
}
