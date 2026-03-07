variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
}

variable "location" {
  description = "Região do Azure"
  type        = string
  default     = "Austria East"
}

variable "app_service_name" {
  description = "Nome do App Service"
  type        = string
}

variable "app_plan" {
  description = "Nome do App Plan"
  type        = string
}

variable "sql_server_name" {
  description = "Nome do SQL Server"
  type        = string
}

variable "sql_database_name" {
  description = "Nome do banco de dados"
  type        = string
}

variable "sql_admin_login" {
  description = "Usuário administrador do SQL"
  type        = string
}

variable "sql_admin_password" {
  description = "Senha do administrador SQL"
  type        = string
  sensitive   = true
}
