resource "azurerm_service_plan" "main" {
  name                = "asp-interview-${var.unique_person_name}"
  location            = var.location
  resource_group_name = var.rg_name
  os_type             = "Linux"
  sku_name            = "B1"

}

resource "azurerm_linux_web_app" "main" {
  name                = "app-interview${var.unique_person_name}"
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    use_32_bit_worker = true

    application_stack {
      python_version = 3.9
    }
  }

}
