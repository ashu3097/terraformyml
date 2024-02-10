module "mod_resourcegrp" {
  source = "../modules/mod_resourcegrp"
  rg_name=local.rg_local.rg_name
  rg_location=local.rg_local.rg_location
}

module "mod_virtualnetwork" {
  source = "../modules/mod_virtualnetwork"
  vnet_name=local.vnet_local.vnet_name
  output_rg_name=module.mod_resourcegrp.output_rg_name
  output_rg_location=module.mod_resourcegrp.output_rg_location
}

module "mod_subnet" {
  source = "../modules/mod_subnet"
  subnet_name=local.subnet_local.subnet_name
   output_rg_name=module.mod_resourcegrp.output_rg_name
   output_vnet_name=module.mod_virtualnetwork.output_vnet_name
}

module "mod_networkinterface"{
  source = "../modules/mod_networkinterface"
  interface_name = local.nic_local.interface_name
  output_rg_name=module.mod_resourcegrp.output_rg_name
  output_rg_location=module.mod_resourcegrp.output_rg_location
  output_subnet_id=module.mod_subnet.output_subnet_id

}
module "mod_virtualmachine" {
  source = "../modules/mod_virtualmachine"
  vm_name=local.vm_local.vm_name
  vm_size =  local.vm_local.vm_size
  vm_admin_username = local.vm_local.vm_admin_username
  vm_admin_pass = local.vm_local.vm_admin_pass
  output_rg_name=module.mod_resourcegrp.output_rg_name
  output_rg_location=module.mod_resourcegrp.output_rg_location
  output_nic_id=module.mod_networkinterface.output_nic_id


}








