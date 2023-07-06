variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type = string
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type = string
}

variable "ec2_key_name" {
  description = "Key name for the EC2 instance"
   type        = string
}

variable "ec2_count" {
  description = "Number of EC2 instances to create"
  default     = 2
}

variable "availability_zone" {
  description = "Availability zone for the EC2 instance"
  //default     = "eu-west-1a"
}

variable "subnets" {
  description = "List of subnets for the EC2 instance"
  type        = list(string)
}

variable "environment" {
  description = "Environment name"
}

variable "product" {
  description = "Product name"
}


