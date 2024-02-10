
resource "azurerm_subnet" "st" {
  name                 = var.subnet_name
  resource_group_name  = module.mod_resourcegrp.rg_name
  virtual_network_name = module.mod_virtualnetwork.vnet_name
  address_prefixes     = ["10.0.2.0/24"]
}