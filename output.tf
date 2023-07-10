output "instance1_IP" {
  value = join("", aws_instance.instance1[*].public_ip)
}

output "instance2_IP" {
  value = join("", aws_instance.instance2[*].public_ip)
}