terraform {
  backend "azurerm" {
    subscription_id = "ff89374a-904f-42b3-ba04-abd686260199"
    resource_group_name = "rg01tfstatesecdev"
    storage_account_name = "st01tfstatesecdev"
    container_name = "tfstate"
    key = "basics.tfstate"
  }
}