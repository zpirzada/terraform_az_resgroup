terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.41.0"
    }
  }

  required_version = ">= 0.15"
}
provider "azurerm" {
  features{}
}

#Creates resource group
resource "azurerm_resource_group" "main" {
    name = "zeb-tf-rg-eastus"
    location = "eastus"
}

output "out_msg" {
        value = azurerm_resource_group.main.name
}
