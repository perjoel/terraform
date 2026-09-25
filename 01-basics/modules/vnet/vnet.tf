resource "azurerm_virtual_network" "this" {
  location            = var.location
  resource_group_name = var.vnet_rg_name
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  tags                = var.tags
}