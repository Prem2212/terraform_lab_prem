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
  profile = var.AWS_PROFILE
  region  = var.AWS_REGION
}
 
terraform {
  backend "s3"{

  bucket ="prembucket22"
  key    ="mystate.tfstate"
  region ="ca-central-1"
  }
}