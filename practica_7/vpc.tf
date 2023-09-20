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

resource "aws_internet_gateway" "main_gateway" {
  vpc_id = aws_vpc.vpc_virginia.id

  tags = {
    Name = "main"
  }
}

resource "aws_security_group" "sg_public_instances" {
  name        = "sg_public_instances"
  description = "Security group public fot instances"
  vpc_id      = aws_vpc.vpc_virginia.id

  ingress {
    description = "SSH Over Internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.sg_cidr_ingress]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Main"
  }
}
