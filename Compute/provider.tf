terraform {
  required_version = ">=1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5L3T77ZFEMB7Q2PZ"
  secret_key = "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"
}




# Create a VPC
resource "aws_vpc" "projectA" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}