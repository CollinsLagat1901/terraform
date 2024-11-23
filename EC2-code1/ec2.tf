resource "aws_instance" "s7rosine_ec2_instance" {
  ami                    = "ami-0866a3c8686eaeeba"  # Replace with your specific AMI ID
  instance_type         = "t2.micro"
  subnet_id             = "subnet-0d373741be07c8a06"  # Replace with your specific subnet ID that belongs to a VPC
  key_name              = "terra-key"  # Replace with your key pair name

  #vpc_security_group_ids = [aws_security_group.terra_sg.id]  # Reference the security group by its ID

  tags = {
    Name = "s7rosine-ec2"
  }
}

resource "aws_security_group" "terra_sg" {
  name        = "terra-sg"  # Set the name of the security group to terra-sg
  description = "Security group for EC2 instance allowing SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Adjust to restrict SSH access to specific IPs if needed
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
