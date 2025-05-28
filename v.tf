resource "aws_vpc" "Test_vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "TestVPC"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.Test_vpc.id
  cidr_block = "10.1.0.0/18"   # 10.1.0.0 - 10.1.63.255

  tags = {
    Name = "TestPS"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.Test_vpc.id
  cidr_block = "10.1.64.0/18"  # 10.1.64.0 - 10.1.127.255 (next /18 block)

  tags = {
    Name = "TestPVT"
  }
}
resource "aws_internet_gateway" "test_igw"{
    vpc_id = aws_vpc.Test_vpc.id
}
resource "aws_route_table" "test_route" {
  vpc_id = aws_vpc.Test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test_igw.id
  }
}