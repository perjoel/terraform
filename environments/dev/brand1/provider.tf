terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg01tfstatesecdev"
    storage_account_name = "st01tfstatesecdev"
    container_name       = "tfstate"
    use_azuread_auth     = true
    key                  = "tfstate-cor-app1-sec-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
