resource "azurerm_postgresql_flexible_server" "main" {
  name                   = "psql-interview-${var.unique_person_name}"
  resource_group_name    = var.rg_name
  location               = var.location
  version                = "12"
  administrator_login    = var.db_username
  administrator_password = var.db_password
  storage_mb             = 32768
  sku_name               = "B_Standard_B1ms"
  zone                   = 2
}

resource "azurerm_postgresql_flexible_server_database" "main" {
  name      = "db-core-01"
  server_id = azurerm_postgresql_flexible_server.main.id
  collation = "en_US.utf8"
  charset   = "utf8"
}
