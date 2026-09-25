resource "azurerm_resource_group" "tfstate" {
  name     = "rg${var.resource_number}tfstate${var.location_short}${var.environment}"
  location = var.location
  tags = {
    "createdby"   = "terraform"
    "environment" = var.environment
  }
}

resource "azurerm_storage_account" "tfstate" {
  name                            = "st${var.resource_number}tfstate${var.location_short}${var.environment}"
  resource_group_name             = azurerm_resource_group.tfstate.name
  location                        = azurerm_resource_group.tfstate.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = false
  default_to_oauth_authentication = true
  https_traffic_only_enabled      = true
  min_tls_version                 = "TLS1_2"
  sftp_enabled                    = false
  tags = {
    "createdby"   = "terraform"
    "environment" = var.environment
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}