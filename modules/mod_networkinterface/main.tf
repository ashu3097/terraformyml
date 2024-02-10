resource "azurerm_network_interface" "nic" {
  name                = var.interface_name
  location            = module.mod_resourcegrp.rg_location
  resource_group_name = module.mod_resourcegrp.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.mod_subnet.subnet_name
    private_ip_address_allocation = "Dynamic"
  }
}