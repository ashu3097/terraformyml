locals {
  rg_local={
      rg_name="rg-demo"
      rg_location="East Us"
  }
}

locals {
  subnet_local={
    subnet_name="my-subnet"
  }
}

locals {
  vnet_local={
    vnet_name="my-vnet"
  }
}

locals {
  nic_local={
    interface_name="my-nic"
  }
}

locals {
  vm_local={
    vm_name="myvm1"
    vm_size="Standard_F2"
    vm_admin_username="testuser"
    vm_admin_pass="Testusr@1234567"
  }
}

