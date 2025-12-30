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
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}




resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    env   = "Dev"
    owner = "Joel"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-01-sec-dev"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/24"]
  tags = {
    env   = "Dev"
    owner = "Joel"
  }
}

