terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#Create a S3 bucket

resource "aws_s3_bucket" "codex_bucket" {
  bucket = "codesops-codex78"

  tags = {
    Name        = "codesops-codex 1.0"
    Environment = "dev"
    Project     = "codex"
  }
}
