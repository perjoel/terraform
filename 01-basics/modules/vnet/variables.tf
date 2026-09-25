variable "location" {
  description = "location/region"
  type        = string
  default     = "swedencentral"
}

variable "vnet_rg_name" {
  description = "name of the resource group"
  type        = string
}

variable "vnet_name" {
  description = "name of the vnet"
  type        = string
}

variable "vnet_address_space" {
  description = "list of vnet address spaces"
  type        = set(string)
}

variable "tags" {
  description = "tags"
  type        = map(string)
}