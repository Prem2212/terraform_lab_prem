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
  backend "s3" {

    bucket                  = "prem-22121995"
    key                     = "netwotk.tfstate"
    region                  = "ca-central-1"
    shared_credentials_file = "/Users/prem/.aws/credentials"

  }

}
