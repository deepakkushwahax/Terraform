# Day 3: AWS S3 Bucket with Terraform

This project demonstrates how to provision an AWS S3 bucket using Terraform.

## Description

The Terraform configuration in this directory (`main.tf`) performs the following actions:
1.  **Provider Configuration**: Sets up the AWS provider to use the `us-east-1` region.
2.  **Resource Creation**: Creates an S3 bucket named `codesops-codex78`.
3.  **Tagging**: Applies tags (`Name`, `Environment`, `Project`) to the bucket for better resource management.

## Configuration Code

```hcl
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
```

## Prerequisites

Before running this code, ensure you have:
*   [Terraform](https://www.terraform.io/downloads) installed (v1.0+).
*   AWS credentials configured (e.g., via `aws configure` or environment variables).

## Usage

1.  **Initialize Terraform**:
    Initialize the working directory and download the required providers.
    ```bash
    terraform init
    ```

2.  **Plan the Deployment**:
    Preview the changes that Terraform will make.
    ```bash
    terraform plan
    ```

3.  **Apply the Configuration**:
    Create the S3 bucket.
    ```bash
    terraform apply
    ```
    Type `yes` when prompted to confirm.

4.  **Destroy Resources** (Optional):
    To remove the created resources.
    ```bash
    terraform destroy
    ```

## Resources

| Name | Type | Description |
|------|------|-------------|
| `codex_bucket` | `aws_s3_bucket` | The S3 bucket created for the project. |
