resource "aws_instance" "s8lagataf02_ec2_instance" {
  ami           = "ami-0866a3c8686eaeeba"  
  instance_type = "t2.micro"
  subnet_id     = "subnet-0d373741be07c8a06"  # Replace with your specific subnet ID that belongs to a VPC
  key_name      = "terra-key"  # Replace with your key pair name

  # Associate the EC2 instance with the security group
  vpc_security_group_ids = [aws_security_group.terra_sg.id]

  tags = {
    Name = "s8lagataf02-ec2"
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
