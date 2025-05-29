# IAM Role for EC2 with S3 Read Access

This Terraform project provisions an IAM role that can be assumed by an EC2 instance, granting it read-only access to objects in Amazon S3.

## What It Does

- **Creates an IAM Role** – A role called `ec2-test-binding-access-role` is created for EC2 to assume.
- **Adds a Policy** – The role is attached to a policy that allows read-only access to S3 (`s3:GetObject`).
- **Outputs the Role ARN** – Once applied, Terraform will show the IAM Role's ARN for easy reference.

## Files Included

- `main.tf` – Defines the IAM role and policy.
- `variables.tf` – Contains configurable variables like the role name and AWS region.
- `outputs.tf` – Outputs the IAM Role's ARN after deployment.

## How to Use

1. Make sure you have AWS credentials set up and Terraform installed.
2. Run the following commands:

```bash
terraform init      # Sets up Terraform
terraform plan      # Shows what will be created
terraform apply     # Creates the IAM role and policy
