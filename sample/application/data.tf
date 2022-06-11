data "aws_ami" "ubuntu" {
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]

  most_recent = true
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket="prem-22121995"
    key="netwotk.tfstate"
    region="ca-central-1"
  }
}  