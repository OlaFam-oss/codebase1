variable "aws_region" {
  default = "eu-west-1"
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "ec2_key_name" {
  description = "Key name for the EC2 instance"
  type        = string
}

//variable "ec2_count" {
//description = "Number of EC2 instances to create"
//type        = number
//default     = "2"
//}

variable "availability_zone" {
  description = "Availability zone for the EC2 instance"
  type        = string
  //default     = "eu-west-1a"
}

//variable "subnets" {
//description = "List of subnets for the EC2 instance"
//type        = list(string)
//}

//variable "environment" {
//description = "Environment name"
//}

//variable "product" {
//description = "Product name"
//}

variable "ec2_sg" {
  description = "security group name"
}

variable "default_tags" {
  description = "ec2 machine default tag"
}

variable "bucket" {
  description = "ec2 bucket"
}

variable "key" {
  description = "ec2 machine key"
}

variable "region" {
  description = "ec2 region"
}

variable "vpc.id" {
  description = "vpc id"
  default     = "vpc-0005bae46051f5692"
}