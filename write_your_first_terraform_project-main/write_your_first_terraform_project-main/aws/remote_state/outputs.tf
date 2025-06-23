output "instance_id" {
  value       = aws_instance.terraform_demo.id
  description = "The ID of the EC2 instance"
}

output "instance_public_ip" {
  value       = aws_instance.terraform_demo.public_ip
  description = "The public IP address of the EC2 instance"
}

output "instance_private_ip" {
  value       = aws_instance.terraform_demo.private_ip
  description = "The private IP address of the EC2 instance"
}

output "instance_public_dns" {
  value       = aws_instance.terraform_demo.public_dns
  description = "The public DNS name of the EC2 instance"
}

output "instance_ami" {
  value       = aws_instance.terraform_demo.ami
  description = "The AMI used to launch the EC2 instance"
}
