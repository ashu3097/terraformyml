resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = module.mod_resourcegrp.rg_location
  resource_group_name = module.mod_resourcegrp.rg_name
}