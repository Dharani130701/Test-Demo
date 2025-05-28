resource "aws_instance" "this" {
  ami                     = "ami-0c1ac8a41498c1a9c"
  instance_type           = "t3.micro"
}
 # code for ec2 creation in vs using tf#