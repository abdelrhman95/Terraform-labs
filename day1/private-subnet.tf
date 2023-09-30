resource "aws_subnet" "first-Private" {
  vpc_id     = aws_vpc.iti-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "first_private_sn"
  }
}




resource "aws_subnet" "seconed-Private" {
  vpc_id     = aws_vpc.iti-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "sec_private_sn"
  }
}