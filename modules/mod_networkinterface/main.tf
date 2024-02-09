resource "azurerm_network_interface" "nic" {
  name                = var.interface_name
  location            = var.output_rg_location
  resource_group_name = var.output_rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.output_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}