resource "aws_instance" "aws_linux_instance" {
  ami                    = "ami-04cb4ca688797756f"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instances.id]
  depends_on             = [aws_internet_gateway.main_gateway]
}