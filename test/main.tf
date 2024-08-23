resource "azurerm_resource_group" "rg" {
  name     = "kv-rg"
  location = "eastus2"
}

module "kv" {
  source = "../infra"

  region = azurerm_resource_group.rg.location
  instance = "001"
  environment = "dev"
  project = "workload"
  resource_type = "kv"

  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  sku_name = "standard"
  tenant_id = ""
}