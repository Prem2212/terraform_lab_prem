AWS_REGION  = "us-east-1"
AWS_PROFILE = "training"

AMIS = {
  ca-central-1 = "ami-073c944d45ffb4f27" #canada
  eu-west-1    = "ami-07e5be90a4569bf1c" # EU Ireland
  eu-west-2    = "ami-0fdf70ed5c34c5f52" # EU London
  us-east-1    = "ami-0c4f7023847b90238" # US N.virginia
}
instance_type = "t2.micro"

environment = "production"