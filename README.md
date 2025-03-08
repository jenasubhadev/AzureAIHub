## AzureAIHub
---
## Table of Contents
1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
   - [Make the Script Executable](#make-the-script-executable)
   - [Initialize Terraform](#initialize-terraform)
   - [Plan and Apply](#plan-and-apply)
```
Welcome to **AzureAIHub**! This repository is designed to help you set up and manage a multi-environment Azure infrastructure using Terraform. Whether you're working on **dev**, **staging**, or **production**, this project provides a scalable and organized structure for your Azure resources.
```
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

## Workflow
```
[User Request] --> [Azure Front Door] --> [App Service] --> [SQL Database]
                                      --> [Cognitive Services]
                                      --> [Machine Learning]
[App Service] --> [Service Bus] --> [Background Workers]
[App Service] --> [Key Vault] (for secrets)
[All Services] --> [Log Analytics] (for monitoring)
```

```Detailed Workflow Example
Let’s walk through an example of how these services work together in a real-world scenario:

Scenario: User submits a form with text and an image
Front Door receives the request and routes it to the nearest App Service instance.

App Service processes the request:

Stores form data in SQL Database.

Sends the text to Cognitive Services for sentiment analysis.

Sends the image to Cognitive Services for object detection.

Cognitive Services returns analysis results to the App Service.

The App Service sends a message to Service Bus to trigger a background task (e.g., email notification).

Machine Learning may be called to perform additional predictions based on the data.

Key Vault provides secrets (e.g., API keys, database credentials) to the App Service and other components.

Logs and metrics from all services are sent to Log Analytics for monitoring and troubleshooting.
```