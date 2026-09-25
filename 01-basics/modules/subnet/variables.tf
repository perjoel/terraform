variable "rg_name" {
  description = "name of the rg"
  type        = string
}

variable "name" {
  description = "name of the subnet"
  type        = string
}

variable "virtual_network_name" {
  description = "name of the vnet to attach to"
  type        = string
}

variable "address_prefixes" {
  description = "list of address prefixes for the subnet"
  type        = list(string)
}