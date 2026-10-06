## general variables

variable "environment" {
  description = "dev, test or prod"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "location/region of the resource"
  type        = string
  default = "swedencentral"
}

variable "location_short" {
  description = "short version of the location"
  type        = string
  default = "sec"
}

variable "resource_number" {
  description = "used to handle resource uniqueness, such as 01"
  type = string
  default = "01"
}

variable "application_name" {
  description = "name of the application, used for resource and rg names"
  type        = string
  default = "basic"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default = {
    "createdby" = "terraform"
  }
}

## vnet variables

variable "vnet_address_space" {
  description = "list of the vnet address space"
  type        = list(string)
  default = [ "10.0.0.0/24", "10.0.1.0/24" ]
}

variable "subnet_address_space" {
  description = "list of the subnet address space"
  type        = list(string)
  default = [ "10.0.0.0/28", "10.0.1.0/28" ]
}