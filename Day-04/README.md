# **Day 4: Terraform Remote Backend Using AWS S3**

This project demonstrates how to configure a **remote backend** in Terraform using **Amazon S3**.  
Storing the Terraform state (`terraform.tfstate`) in S3 ensures better collaboration, security, and reliability compared to using a local state file.

---

## 📌 **Overview**

In this setup:

- Terraform state is stored in an **S3 bucket**
- The state file path is defined using a unique key
- Backend is configured for the region `us-east-1`
- Provider version is pinned for stability
- State locking is enabled using `use_lockfile = true`

This configuration is foundational for production-grade Infrastructure as Code workflows.

---

## 🏗️ **Terraform Backend Configuration**

```hcl
terraform {

  backend "s3" {
    bucket       = "codesops-codex78"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }

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
```

---

## 📂 **What This Setup Does**

✔ Stores the Terraform state file in an S3 bucket  
✔ Enables centralized state management  
✔ Ensures consistency during deployments  
✔ Makes the workflow ready for collaboration and CI/CD pipelines  

---

## ⚙️ **Prerequisites**

Before running this configuration, ensure:

- **Terraform v1.0+** is installed  
- **AWS CLI** is configured using `aws configure`  
- You have access to the S3 bucket: `codesops-codex78`

---

## 🚀 **How to Use**

### 1️⃣ Initialize Terraform  
Downloads backend plugins and sets up the working directory.

```bash
terraform init
```

### 2️⃣ Validate the configuration  
Ensures your Terraform code is syntactically correct.

```bash
terraform validate
```

### 3️⃣ Plan the changes  
Shows what Terraform will create/update.

```bash
terraform plan
```

### 4️⃣ Apply the configuration  
Deploys and writes the state to S3.

```bash
terraform apply
```

### 5️⃣ Destroy (optional)  
Removes all created resources.

```bash
terraform destroy
```

---

## 📝 **Best Practices**

- Use **DynamoDB** for advanced state locking  
- Use unique keys for each environment (e.g., `dev/`, `prod/`)  
- Enable bucket versioning for safe state rollbacks  
- Avoid manually editing the `terraform.tfstate` file  

---

## 📎 **Resources**

| Component | Purpose |
|----------|----------|
| `s3 backend` | Stores Terraform state remotely |
| `aws provider` | Connects Terraform to AWS services |
