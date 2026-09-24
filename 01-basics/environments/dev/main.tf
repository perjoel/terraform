module "rg" {
  source = "../../modules/rg"
  location = var.location
  rg_name = local.rg_name
  tags = var.tags
}