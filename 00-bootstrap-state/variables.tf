variable "location" {
  description = "Location of the deployment"
  type        = string
  default     = "swedencentral"
}

variable "location_short" {
  description = "Short version of location"
  type        = string
  default     = "sec"
}

variable "environment" {
  description = "dev test or prod"
  type        = string
  default     = "dev"
}

variable "subscription_id" {
  description = "Azure subsription ID for deployment target"
  type        = string
}

variable "resource_number" {
  description = "Counter value for resources, for example 01"
  type        = string
  default     = "01"
}