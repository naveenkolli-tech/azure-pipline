terraform {
  backend "azurerm" {
    resource_group_name  = "rg-fincorp-mgmt"
    storage_account_name = "stfincorptfstate"
    container_name       = "tfstate"
    key                  = "webapp.tfstate"
  }
}
