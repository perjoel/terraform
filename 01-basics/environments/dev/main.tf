module "rg" {
  source   = "../../modules/rg"
  location = var.location
  rg_name  = local.rg_name
  tags     = var.tags
}

module "vnet_rg" {
  source   = "../../modules/rg"
  location = var.location
  rg_name  = local.vnet_rg_name
  tags     = var.tags
}

module "vnet" {
  source             = "../../modules/vnet"
  location           = var.location
  vnet_rg_name       = module.vnet_rg.rg_name
  vnet_name          = local.vnet_name
  vnet_address_space = var.vnet_address_space
  tags               = var.tags
}

module "subnet" {
  source               = "../../modules/subnet"
  name                 = local.subnet_name
  rg_name              = module.vnet_rg.rg_name
  virtual_network_name = module.vnet.vnet_name
  address_prefixes     = var.subnet_address_space
}