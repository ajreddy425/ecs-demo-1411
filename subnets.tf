// create the subnet

resource "aws_subnet" "sub1" {
  vpc_id     = aws_vpc.main.id // phone number of vpc // resoirce_type.logical_name.id
  cidr_block = var.subnet1_cidr
  tags = {
    Name = "Public-Subnet-1"
  }
}

resource "aws_subnet" "sub2" {
  vpc_id     = aws_vpc.main.id // phone number of vpc // resoirce_type.logical_name.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Public-Subnet-2"
  }
}