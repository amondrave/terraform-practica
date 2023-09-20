resource "aws_route_table" "route_table_dev" {
  vpc_id = aws_vpc.vpc_virginia.id

  route {
    cidr_block = "0.0.0.0/0" // Default route
    gateway_id = aws_internet_gateway.main_gateway.id
  }


  tags = {
    Name = "Main"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table_dev.id
}