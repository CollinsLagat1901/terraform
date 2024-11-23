variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
  type        = string
  default = "ami-0866a3c8686eaeeba"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default = "t2.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the instance"
  type        = string
  default = "subnet-0d373741be07c8a06"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default = "s8lagataf02_ec2_instance"
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
  default = "terra-key"
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default = "terra-sg"
}

variable "allowed_ip" {
  description = "IP address allowed to access the instance via SSH"
  type        = string
  default     = "0.0.0.0/0"  # Default value; adjust as necessary
}
