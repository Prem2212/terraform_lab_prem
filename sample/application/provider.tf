terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "training"
  region  = "ca-central-1"
}
terraform {
  backend "s3" {

    bucket                  = "prem-22121995"
    key                     = "application.tfstate"
    region                  = "ca-central-1"
  

  }

}