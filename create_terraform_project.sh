#!/bin/bash

# Define the project root directory
PROJECT_ROOT="."

# Create the root directory
mkdir -p "$PROJECT_ROOT"
cd "$PROJECT_ROOT"

# Create root-level Terraform files
touch main.tf variables.tf outputs.tf providers.tf

# Create environments directory and subdirectories for dev, staging, production
mkdir -p environments/{dev,staging,production}

# Create environment-specific Terraform files
for env in dev staging production; do
  mkdir -p "environments/$env"
  touch "environments/$env/main.tf"
  touch "environments/$env/variables.tf"
  touch "environments/$env/terraform.tfvars"
done

# Create modules directory and subdirectories for each module
mkdir -p modules/{app_service,sql_database,service_bus,key_vault}

# Create module-specific Terraform files
for module in app_service sql_database service_bus key_vault; do
  mkdir -p "modules/$module"
  touch "modules/$module/main.tf"
  touch "modules/$module/variables.tf"
  touch "modules/$module/outputs.tf"
done

# Print success message
echo "Terraform project structure created successfully at: $(pwd)"