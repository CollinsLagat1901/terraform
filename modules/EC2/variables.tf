variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-2" # Set a default if applicable, or remove if always specified by the user
}

variable "instance_type" {
  description = "Type of EC2 instance to launch"
  type        = string
  default     = "t2.micro" # Set a default if applicable, or remove if always specified by the user
}

variable "key_pair" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
  default     = "jurist" # Set a default if applicable, or remove if always specified by the user
}

variable "common_tags" {
  description = "A map of common tags to apply to all resources"
  type        = map(string) # Changed from `map(any)` to `map(string)` for stricter type enforcement
  default     = {
    id             = "2024"
    owner          = "jurist"
    environment    = "dev"
    project        = "blueops"
    create_by      = "Terraform"
    cloud_provider = "aws"
    company        = "DEL"
  }
}
