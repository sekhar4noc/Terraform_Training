provider "aws" {

  region = "us-east-1"

}


resource "aws_vpc" "main_vpc" {

  cidr_block       = "10.1.0.0/24"
  instance_tenancy = "default"

  tags = {

    Name = "Testing_vpc"
  }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "Testing_igw"
  }
}
