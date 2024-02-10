resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = module.mod_resourcegrp.rg_name
  location            = module.mod_resourcegrp.rg_location
  size                = var.vm_size
  admin_username      = var.vm_admin_username
  admin_password      = var.vm_admin_pass
  network_interface_ids = [
    module.mod_networkinterface.output_nic_id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}