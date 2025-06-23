
# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= 0.12"
}

# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {}

# ------------------------------------------------------------------------------
# CREATE EC2 INSTANCE
# ------------------------------------------------------------------------------

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Update with a valid AMI ID for your region
  instance_type = "t2.micro"               # Update instance type as needed

  # Optional: Key pair for SSH access
  key_name = "your-key-name"               # Replace with your SSH key pair name

  # Optional: Configure security group
  security_groups = ["default"]

  # Optional: Specify a name for the instance
  tags = {
    Name = "TerraformExampleInstance"
  }

  # Optional: Add user_data for initializing the instance on boot
  user_data = <<-EOT
              #!/bin/bash
              echo "Hello from Terraform!" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
              EOT
}
