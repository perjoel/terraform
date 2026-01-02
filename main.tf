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

locals {
  naming = "${var.resource_number}${var.application_name}${var.location_short}${var.environment}"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg${local.naming}"
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${local.naming}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/24"]
  tags                = var.tags
}

module "avm-res-keyvault-vault" {
  source                          = "Azure/avm-res-keyvault-vault/azurerm"
  version                         = "0.10.2"
  name                            = "kv${local.naming}"
  location                        = var.location
  resource_group_name             = azurerm_resource_group.rg.name
  tenant_id                       = var.tenant_id
  enable_telemetry                = false
  enabled_for_template_deployment = true
  purge_protection_enabled        = false
  sku_name                        = "standard"
  soft_delete_retention_days      = 7
  network_acls = {
    bypass : "AzureServices"
    ip_rules = var.keyvault_ip_rules
  }
  role_assignments = var.keyvault_rbac
  tags             = var.tags
  secrets = {
    testSecret = {
      name = "testSecret"
    }
    testSecret2 = {
      name = "testSecret2"
    }
  }
  secrets_value = var.secrets_value
}
