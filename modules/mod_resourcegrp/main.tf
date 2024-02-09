resource "azurerm_resource_group" "rg_new" {
  name     = var.rg_name
  location = var.rg_location
}