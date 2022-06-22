resource "azurerm_sql_server" "interview_test" {
  name                         = "sql-interview-${var.unique_person_name}"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.db_username
  administrator_login_password = var.db_password
}

resource "azurerm_sql_database" "interview_test" {
  name                             = "sqldb-interview-${var.unique_person_name}"
  resource_group_name              = var.rg_name
  location                         = var.location
  server_name                      = azurerm_sql_server.interview_test.name
  requested_service_objective_name = "Basic"
  zone_redundant                   = false
}
