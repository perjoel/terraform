terraform {
  required_version = ">= 1.16.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.6"
    }
  }
  backend "local" {}
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}