locals {
  tag_name = join("-", [var.AWS_REGION, var.AWS_PROFILE])
}