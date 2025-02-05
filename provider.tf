terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "daws82s-tf-remote-state"
    key    = "vpc-creation-using-module-test" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "daws82s-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}