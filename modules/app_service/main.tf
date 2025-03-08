resource "azurerm_app_service_plan" "asp" {
  name                = "asp-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Standard"
    size = var.app_service_sku
  }
}

resource "azurerm_app_service" "app" {
  name                = "app-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
}