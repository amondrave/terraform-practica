terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = "~>1.5"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # Norte de Virginia 
  default_tags {
    tags = var.tags
  }
}
