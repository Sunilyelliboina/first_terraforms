# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= 0.12"
}

# ------------------------------------------------------------------------------  
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {}

# ------------------------------------------------------------------------------  
# CREATE S3 BUCKET
# ------------------------------------------------------------------------------

resource "aws_s3_bucket" "example" {
  bucket = "terraform-example-bucket-unique123456"  # Replace with a globally unique bucket name

  tags = {
    Name        = "TerraformExampleS3Bucket"
    Environment = "Dev"
  }

  # Optional: Enable versioning
  versioning {
    enabled = true
  }

  # Optional: Enable server-side encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  # Optional: Enable access logging (if needed)
  # logging {
  #   target_bucket = "my-log-bucket"
  #   target_prefix = "log/"
  # }

  # Optional: Block all public access
  lifecycle {
    prevent_destroy = true
  }
}

# ------------------------------------------------------------------------------  
# OPTIONAL OUTPUTS
# ------------------------------------------------------------------------------

output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.example.bucket
}
