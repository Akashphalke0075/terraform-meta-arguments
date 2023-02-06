terraform {
  required_version = ">=1.2.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">=4.16.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "eu-west-1"
  alias = "aws-eu-region"
}