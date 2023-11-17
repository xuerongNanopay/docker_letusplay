terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# N. Virginia
provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = [ "~/.aws/credentials" ]
}