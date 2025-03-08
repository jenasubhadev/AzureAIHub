resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_iothub" "iot_hub" {
  name                = var.iot_hub_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  sku {
    name     = var.iot_hub_sku
    capacity = var.iot_hub_capacity
  }

  tags = var.tags
}