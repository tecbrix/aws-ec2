output "ec2_pub_ip" {
  description = "Public Ip of ec2"
  value       = aws_instance.ec2.public_ip
}

output "ec2_pub_dns_name" {
  description = "Public DNS of ec2"
  value       = aws_instance.ec2.public_dns 
}

output "ec2_pub_prvt_name" {
  description = "Private DNS of ec2"
  value       = aws_instance.ec2.private_dns 
}