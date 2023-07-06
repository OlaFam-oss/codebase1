output "ec2_IP" {
  value = join("", aws_instance.ec2[*].public_ip)
}