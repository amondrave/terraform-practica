variable "cidr_block_virginia" {
  type = string
}


variable "enviroment" {
  type = string
}


variable "vpc_name_virginia" {
  type = string
}


variable "list_subnet" {
  description = "list of CIDR subnets"
  type        = list(string)
}

variable "tags" {
  description = "tags of resources"
  type        = map(string)
}

variable "instance_type" {
  description = "Type of instance"
  type = string
}