## general variables

variable "environment" {
  description = "dev, test or prod"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "location/region of the resource"
  type        = string
}

variable "location_short" {
  description = "short version of the location"
  type        = string
}

variable "resource_number" {
  description = "used to handle resource uniqueness, such as 01"
}

variable "application_name" {
  description = "name of the application, used for resource and rg names"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}

## vnet variables

variable "vnet_address_space" {
  description = "list of the vnet address space"
  type        = list(string)
}

variable "subnet_address_space" {
  description = "list of the subnet address space"
  type        = list(string)
}