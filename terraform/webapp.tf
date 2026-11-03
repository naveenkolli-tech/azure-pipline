# Create a resource group
resource "azurerm_resource_group" "dev-rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create app service plan
resource "azurerm_service_plan" "service-plan" {
  name                = "simple-service-plan"
  location            = azurerm_resource_group.dev-rg.location
  resource_group_name = azurerm_resource_group.dev-rg.name
  os_type             = "Linux"
  sku_name            = "S1"

  tags = {
    environment = var.environment
  }
}

# Create JAVA app service
resource "azurerm_linux_web_app" "app-service" {
  name                = var.app_name
  location            = azurerm_resource_group.dev-rg.location
  resource_group_name = azurerm_resource_group.dev-rg.name
  service_plan_id     = azurerm_service_plan.service-plan.id

  site_config {
    application_stack {
      java_server         = "TOMCAT"
      java_server_version = "10.1"
      java_version        = "17"
    }
  }

  tags = {
    environment = var.environment
  }
}

output "webapp_url" {
  value = "https://${azurerm_linux_web_app.app-service.default_hostname}"
}
