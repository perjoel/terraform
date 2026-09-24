variable "environment" {
  description = "dev, test or prod"
  type = string
  default = "dev"
}

variable "location" {
  description = "location/region of the resource"
  type = string
}

variable "location_short" {
  description = "short version of the location"
  type = string
}

variable "resource_number" {
  description = "used to handle resource uniqueness, such as 01"
}

variable "application_name" {
  description = "name of the application, used for resource and rg names"
  type = string
}

variable "tags" {
  description = "Tags"
  type = map(string)
}