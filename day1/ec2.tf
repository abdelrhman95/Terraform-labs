 resource "aws_instance" "bastion_vm" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.first-Public.id
  vpc_security_group_ids = [aws_security_group.public-sec.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.public_key-pair.key_name
  


  tags = {
    Name = "BastionVm"
  }



} 



resource "aws_instance" "Application" {

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.first-Private.id
    vpc_security_group_ids = [aws_security_group.private-sec.id]
    key_name = aws_key_pair.public_key-pair.key_name
    tags = {
      Name = "Application"
    }
  
}