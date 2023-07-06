provider "aws" {
  region = "eu-west-1" # Replace with your desired AWS region
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id            = "vpc-0005bae46051f5692"
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-1a" # Replace with your desired availability zone
}

resource "aws_subnet" "subnet2" {
  vpc_id            = "vpc-0005bae46051f5692"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1b" # Replace with your desired availability zone
}
