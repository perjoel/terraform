## general variables

variable "environment" {
  description = "dev, test or prod"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "location/region of the resource"
  type        = string
  default     = "swedencentral"
}

variable "location_short" {
  description = "short version of the location"
  type        = string
  default     = "sec"
}

variable "resource_number" {
  description = "used to handle resource uniqueness, such as 01"
  type        = string
  default     = "01"
}

variable "application_name" {
  description = "name of the application, used for resource and rg names"
  type        = string
  default     = "basic"
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
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "subnet_address_space" {
  description = "list of the subnet address space"
  type        = list(string)
  default     = ["10.0.0.0/28", "10.0.1.0/28"]
}


## nsg rules
variable "nsg_security_rules" {
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
  default = [
    {
      name                   = "rule1"
      description            = "test1"
      priority               = 100
      direction              = "Inbound"
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = "443"
  }]
}
