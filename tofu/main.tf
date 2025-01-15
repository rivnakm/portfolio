terraform {
  backend "s3" {
    bucket = "rivnakm-opentofu-state"
    key = "tofu"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
