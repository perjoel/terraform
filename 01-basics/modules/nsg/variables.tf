variable "name" {
  description = "name of the network security group"
  type        = string
}

variable "location" {
  description = "target location"
  type        = string
}

variable "rg_name" {
  description = "target resource group"
  type        = string
}

variable "security_rules" {
  description = "list of security rule objects"
  type = list(object({
    name                       = string
    description                = optional(string)
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = optional(string, "*")
    destination_port_range     = optional(string)
    destination_port_ranges    = optional(string)
    source_address_prefix      = optional(string, "*")
    destination_address_prefix = optional(string, "*")
  }))
}

variable "tags" {
  description = "tags"
  type        = map(string)
}