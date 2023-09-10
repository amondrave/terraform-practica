resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.cidr_block_virginia
  tags = {
    Name       = var.vpc_name_virginia
    Enviroment = var.enviroment
  }
}


resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.cidr_block_ohio
  tags = {
    Name       = var.vpc_name_ohio
    Enviroment = var.enviroment
  }
  provider = aws.ohio
}