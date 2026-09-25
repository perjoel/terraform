locals {
  rg_name      = "rg${var.resource_number}${var.application_name}${var.location_short}${var.environment}"
  vnet_rg_name = "rg${var.resource_number}Network${var.location_short}${var.environment}"
  vnet_name    = "vnet${var.resource_number}${var.application_name}${var.location_short}${var.environment}"
  subnet_name  = "snet${var.resource_number}${var.application_name}${var.location_short}${var.environment}"
}