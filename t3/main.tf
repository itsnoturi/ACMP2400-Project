terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.10.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-acme-tfstate"
    storage_account_name = "stacp2460storageaccount"
    container_name       = "big-tf-state-acp2460"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}
