# App Service e App Plan
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "app_plan" {
  name                = var.app_plan
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.app_plan.id

app_settings = {
    DB_SERVER = azurerm_mssql_server.sql_server.fully_qualified_domain_name
    DB_NAME   = azurerm_mssql_database.database.name
    DB_USER   = var.sql_admin_login
  DB_PASSWORD = var.sql_admin_password 
}
site_config {
  application_stack {
    docker_image_name = "samueeldaavid/azure-lab-app:latest"
  }
 }
}
# SQL Server
resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.resource_group.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
}

# SQL Database
resource "azurerm_mssql_database" "database" {
  name                 = var.sql_database_name
  server_id            = azurerm_mssql_server.sql_server.id
  sku_name             = "Basic"
  collation            = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb          = 2
  storage_account_type = "Local"
}