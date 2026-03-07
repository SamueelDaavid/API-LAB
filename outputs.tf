output "app_service_url" {
  value = azurerm_linux_web_app.app.default_hostname
}

output "sql_server_name" {
  value = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}

output "sql_server_fqdn" {
  value = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}

output "sql_database_name" {
  value = azurerm_mssql_database.database.name
}
