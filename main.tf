resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
  # bucket = var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}