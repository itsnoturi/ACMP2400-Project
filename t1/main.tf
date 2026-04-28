terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.10.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-acme-tfstate"
    storage_account_name = "stacp2400storageaccount"
    container_name       = "big-tf-state-acp2400"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_container_registry" "teacher-acr" {
  name                = "acrteacheracp2400"
  resource_group_name = "rg-teacher"
  location            = "Central US"
  sku                 = "Basic"
  admin_enabled       = false
}
