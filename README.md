# AzureAIHub

Welcome to **AzureAIHub**! This repository is designed to help you set up and manage a multi-environment Azure infrastructure using Terraform. Whether you're working on **dev**, **staging**, or **production**, this project provides a scalable and organized structure for your Azure resources.
---
## Table of Contents
1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Getting Started](#getting-started)
   - [Make the Script Executable](#make-the-script-executable)
   - [Run the Script](#run-the-script)
   - [Initialize Terraform](#initialize-terraform)
   - [Plan and Apply](#plan-and-apply)
4. [Code Snippets](#code-snippets)
5. [Contributing](#contributing)
6. [License](#license)

---
## Introduction
This project provides a Terraform-based infrastructure as code (IaC) solution for managing Azure resources across multiple environments. The folder structure is designed to be modular, reusable, and easy to maintain. It includes configurations for **Azure App Service**, **SQL Database**, **Service Bus**, **Key Vault**, and more.

---

## Getting Started
Follow these steps to set up and deploy your Azure infrastructure using Terraform.

### Make the Script Executable
Before running the script, make it executable using the following command:

```bash
chmod +x create_terraform_project.sh
```
### Make the Script Executable:
Run the following command to make the script executable:


```bash
chmod +x create_terraform_project.sh
```

Run the Script:
### Execute the script to create the folder structure:
```bash
./create_terraform_project.sh
```
---
### Initialize Terraform:
> Navigate to each environment directory (e.g., environments/dev) and run:
```bash
terraform init
```
### Plan and Apply:
Use terraform plan and terraform apply to deploy resources for each environment.

### Deploying Environments:
Plan and Apply for Dev:

```bash
cd environments/dev
terraform plan
terraform apply
```

## Plan and Apply for Staging:
```bash
cd environments/staging
terraform plan
terraform apply
```
## Plan and Apply for Production:
```bash
cd environments/production
terraform plan
terraform apply
```