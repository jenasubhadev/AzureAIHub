resource "azurerm_sql_server" "sql" {
  name                         = "sql-${var.environment}"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_admin_pass
}

resource "azurerm_sql_database" "db" {
  name                = "db-${var.environment}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  server_name         = azurerm_sql_server.sql.name
}