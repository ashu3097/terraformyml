module "mod_resourcegrp" {
  source = "../modules/mod_resourcegrp"
  rg_name=local.rg_local.rg_name
  rg_location=local.rg_local.rg_location
}

module "mod_virtualnetwork" {
  source = "../modules/mod_virtualnetwork"
  vnet_name=local.vnet_local.vnet_name
}

module "mod_subnet" {
  source = "../modules/mod_subnet"
  subnet_name=local.subnet_local.subnet_name
}

module "mod_networkinterface"{
  source = "../modules/mod_networkinterface"
  interface_name = local.vnet_local.vnet_name
}








