output "ec2_sg_IP" {
  value = join("", aws_instance.ec2_sg[*].public_ip)
}