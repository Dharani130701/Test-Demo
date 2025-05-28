resource "aws_vpc" "Kaps_vpc1" {
  cidr_block = "10.1.0.0/18"

  tags = {
    Name = "VPC"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.Kaps1_vpc.id
  cidr_block = "10.1.0.0/18"   # 10.1.0.0 - 10.1.63.255

  tags = {
    Name = "PublicSubnet1",in
  }
}

resource "aws_subnet1" "private_subnet1" {
  vpc_id     = aws_vpc.Kaps_vpc.id
  cidr_block = "10.1.64.0/18"  # 10.1.64.0 - 10.1.127.255 (next /18 block)

  tags = {
    Name = "PrivateSubnet1"
  }
}