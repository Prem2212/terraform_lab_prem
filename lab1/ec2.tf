resource "aws_instance" "example" {
  ami           = var.image_id
  instance_type = "t2.micro"

}