resource "aws_vpc" "Kaps_vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "FirstVPC"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.Kaps_vpc.id
  cidr_block = "10.1.0.0/18"   # 10.1.0.0 - 10.1.63.255

  tags = {
    Name = "PublicSubnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.Kaps_vpc.id
  cidr_block = "10.1.64.0/18"  # 10.1.64.0 - 10.1.127.255 (next /18 block)

  tags = {
    Name = "PrivateSubnet"
  }
}