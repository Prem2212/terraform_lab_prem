resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "TestVpc"
  }
}
resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "Mysubnet"
  }
}
     