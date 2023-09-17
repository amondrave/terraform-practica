resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.cidr_block_virginia
  tags = {
    Name       = var.vpc_name_virginia
    Enviroment = var.enviroment
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.list_subnet[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_virginia.id
  cidr_block = var.list_subnet[1]

  tags = {
    Name = "Private"
  }
}
