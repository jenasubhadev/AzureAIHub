module "app_service" {
  source         = "../../modules/app_service"
  environment    = "dev"
  location       = var.location
  app_service_sku = "S1"
}

module "sql_database" {
  source         = "../../modules/sql_database"
  environment    = "dev"
  location       = var.location
  sql_admin_user = "sqladmin"
  sql_admin_pass = "P@ssw0rd!"
}