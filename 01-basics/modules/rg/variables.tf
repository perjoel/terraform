variable "location" {
  description = "location/region of the resource"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
  nullable    = true
}
