variable "environment" {
  description = "The environment (dev, staging, production)"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "app_service_sku" {
  description = "The SKU for the App Service Plan"
  type        = string
}