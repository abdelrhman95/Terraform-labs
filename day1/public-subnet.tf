resource "aws_subnet" "first-Public" {
  vpc_id     = aws_vpc.iti-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "first_public_sn"
  }
}




resource "aws_subnet" "seconed-Public" {
  vpc_id     = aws_vpc.iti-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "sec_public_sn"
  }
}