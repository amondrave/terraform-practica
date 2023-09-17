resource "aws_instance" "aws_linux_instance" {
  ami                     = "ami-04cb4ca688797756f"
  instance_type           = var.instance_type
  subnet_id               = aws_subnet.public_subnet.id
}