resource "aws_internet_gateway" "kaps_igw"{
    vpc_id = aws_vpc.Kaps_vpc.id
}