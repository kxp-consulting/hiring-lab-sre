resource "azurerm_app_service_plan" "interview_test" {
  name                = "asp-interview-${var.unique_person_name}"
  location            = var.location
  resource_group_name = var.rg_name
  kind                = "app"

  sku {
    tier = "Shared"
    size = "D1"
  }
}

resource "azurerm_app_service" "interview_test" {
  name                = "app-interview${var.unique_person_name}"
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = azurerm_app_service_plan.interview_test.id
}