resource "aws_instance" "terraform" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = var.instance_type
}