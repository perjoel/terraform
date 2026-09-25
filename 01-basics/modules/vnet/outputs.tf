output "vnet_rg_name" {
  type  = string
  value = azurerm_virtual_network.this.name
}

output "vnet_name" {
  description = "name of the vnet"
  type        = string
  value       = azurerm_virtual_network.this.name
}

output "vnet_id" {
  description = "id of the vnet"
  type        = string
  value       = azurerm_virtual_network.this.id
}