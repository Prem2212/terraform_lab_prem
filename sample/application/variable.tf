variable "AWS_REGION" {
  type    = string
  default = "ca-central-1"
}
variable "AWS_PROFILE" {
  type    = string
  default = "training"

}
variable "AMIS" {
  type = map(string)
  default = {
    ca-central-1 = "ami-073c944d45ffb4f27" #canada
    eu-west-1    = "ami-07e5be90a4569bf1c" # EU Ireland
    eu-west-2    = "ami-0fdf70ed5c34c5f52" # EU London
    us-east-1    = "ami-083654bd07b5da81d" # US N.virginia
  }

}

variable "instance_type" {
  type    = string
  default = "t2.micro"

}




variable "vpc_id" {
  type    = string
  default = "TestVpc"

}