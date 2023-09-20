cidr_block_virginia = "10.10.0.0/16"
enviroment          = "playground"
vpc_name_virginia   = "vpc-virginia"
list_subnet         = ["10.10.0.0/24", "10.10.1.0/24"]
tags = {
  "Enviroment" = "playground"
  "owner"      = "Angel Mondragon"
  "cloud"      = "AWS"
}
instance_type   = "t2.micro"
sg_cidr_ingress = "0.0.0.0/0"