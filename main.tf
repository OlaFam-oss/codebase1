resource "aws_instance" "instance1" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  availability_zone      = aws_subnet.subnet1.availability_zone

  # Other instance configuration...
}

resource "aws_instance" "instance2" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  availability_zone      = aws_subnet.subnet2.availability_zone

  # Other instance configuration...
}