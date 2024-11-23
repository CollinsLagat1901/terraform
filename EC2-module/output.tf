output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.s8lagataf02_ec2_instance.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.s8lagataf02_ec2_instance.public_ip
}

output "security_group_id" {
  description = "The security group ID"
  value       = aws_security_group.terra_sg.id
}
