
resource "azurerm_subnet" "st" {
  name                 = var.subnet_name
  resource_group_name  = var.output_rg_name
  virtual_network_name = var.output_vnet_name
  address_prefixes     = ["10.0.2.0/24"]
}