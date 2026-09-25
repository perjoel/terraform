resource "azurerm_subnet" "this" {
  resource_group_name  = var.rg_name
  name                 = var.name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}