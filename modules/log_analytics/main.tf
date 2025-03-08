resource "azurerm_log_analytics_workspace" "log" {
  name                = "wick-log-analytics"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
}

resource "azurerm_monitor_action_group" "ag" {
  name                = "wick-action-group"
  resource_group_name = azurerm_resource_group.rg.name
  short_name          = "wickag"
}