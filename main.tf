
resource "aws_instance" "amazon_linux" {
  ami               = var.ec2_ami
  instance_type     = var.ec2_instance_type
  key_name          = var.ec2_key_name
  count             = var.ec2_count
  security_groups   = [aws_security_group.ec2a_sg.name]
  availability_zone = var.availability_zone //"eu-west-1a"
  subnet_id         = element(var.subnets, count.index)

  tags = {
    name = "${var.environment}.${var.product}"
  } //var.default_tags
  //tags = {
  //Name = "ec2_amazon_linux_sit1"
}