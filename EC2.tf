#Public EC2 Machine
resource "aws_instance" "PublicEC2" {
  ami                         = "ami-08a52ddb321b32a8c"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "vjkp"
  subnet_id     = element(aws_subnet.public_subnet.*.id, 0)

  tags = {
    Name = "PublicEC2"
    Env  = "Dev"
  }
}

#Private EC2 Machine
resource "aws_instance" "PrivateEC2" {
  ami                         = "ami-08a52ddb321b32a8c"
  instance_type               = "t2.micro"
  associate_public_ip_address = "false"
  key_name                    = "vjkp"
  subnet_id     = element(aws_subnet.private_subnet.*.id, 0)

  tags = {
    Name = "PrivateEC2"
    Env  = "Dev"
  }

}