output "bucket_name" {
  description = "El nombre del bucket S3 creado"
  value       = aws_s3_bucket.example.bucket
}