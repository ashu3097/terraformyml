provider "azurerm" {
  version = "~> 2.0"

  # You can specify the Azure credentials directly in the provider block
  client_id       = "c4edd7aa-fe9e-4a79-967a-aa2f5fc0fb45"
  client_secret   = "..p8Q~1hsdwaV8sUKhKFruVGegt80YCZTaTl-da6"
  subscription_id = "4f5247e7-3a1f-4020-ae0b-900086d984bf"
  tenant_id       = "9f488269-cbdd-40e9-9bd4-f2be680481bc" # (Optional) If not specified, defaults to the tenant of the service principal
  
  features {}

}
