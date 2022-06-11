resource "aws_instance" "terraform" {
  ami           = data.aws_ami.ubuntu.image_id
  instance_type = var.instance_type

  tags = {
    Name        = local.tag_name
    Environment = "TEST"
  }
  subnet_id = data.terraform_remote_state.vpc.outputs.mysubnet
}



