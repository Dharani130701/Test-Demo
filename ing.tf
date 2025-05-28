resource "aws_vpc" "Kaps_vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "MyVPC"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.abc_vpc.id
  cidr_block = "10.1.0.0/18"   # 10.1.0.0 - 10.1.63.255
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.abc_vpc.id
  cidr_block = "10.1.64.0/18"  # 10.1.64.0 - 10.1.127.255 (next /18 block)
}

resource "aws_internet_gateway" "kaps_igw"{
    vpc_id = aws_vpc.abc_vpc.id
}