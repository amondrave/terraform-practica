output "ec2_public_ip" {
  description = "public ip of instance"
  value       = aws_instance.aws_linux_instance.public_ip
}