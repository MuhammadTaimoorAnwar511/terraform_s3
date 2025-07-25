output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.bucket.arn
}
output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.bucket.id
}
output "s3_bucket_website_endpoint" {
  value       = var.s3_static_web_hosting ? "http://${aws_s3_bucket_website_configuration.static[0].website_endpoint}" : ""
  description = "The S3 bucket website endpoint (only if hosting is enabled)"
}
# output "s3_bucket_website_domain" {
#   description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. "
#   value       = var.s3_static_web_hosting ? aws_s3_bucket_website_configuration.static[0].website_domain : ""

# }
