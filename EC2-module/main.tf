resource "aws_instance" "s7rosine_ec2_instance" {
  ami                    = var.ami_id  # Use variable for AMI ID
  instance_type         = var.instance_type  # Use variable for instance type
  subnet_id             = var.subnet_id  # Use variable for subnet ID
  key_name              = var.key_name  # Use variable for key name

  #vpc_security_group_ids = [aws_security_group.terra_sg.id]  # Reference the security group by its ID

  tags = {
    Name = var.instance_name  # Use variable for instance name
  }
}

resource "aws_security_group" "terra_sg" {
  name        = var.security_group_name  # Use variable for the security group name
  description = "Security group for EC2 instance allowing SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ip]  # Use variable for allowed IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
