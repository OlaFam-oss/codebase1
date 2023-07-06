resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "AWS security group"
  vpc_id      = "vpc-0005bae46051f5692"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
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

resource "aws_instance" "instance1" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  subnet_id              = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  # Other instance configuration...
}

resource "aws_instance" "instance2" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  subnet_id              = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  # Other instance configuration...
}


