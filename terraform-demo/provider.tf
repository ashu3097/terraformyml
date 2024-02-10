provider "azurerm" {
  version = "~> 2.0"

  # You can specify the Azure credentials directly in the provider block
  client_id       = "8d1d889e-d8ba-4a70-b0a5-0043dbed8caf"
  client_secret   = "iAt8Q~PdVKAomu~capCeOLShN0ANFEDX~MaV2doF"
  subscription_id = "4f5247e7-3a1f-4020-ae0b-900086d984bf"
  tenant_id       = "9f488269-cbdd-40e9-9bd4-f2be680481bc" # (Optional) If not specified, defaults to the tenant of the service principal
  
  features {}

}
