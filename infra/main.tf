module "kv_name" {
    source = "git@github.com:wyracocha/azure-naming-convention.git?ref=master"
    
    region = "eastus2"
    instance = "001"
    environment = "dev"
    project = "workload"
    resource_type = "kv"
}

resource "azurerm_key_vault" "kv" {
    name = module.kv_name.name
    resource_group_name = var.resource_group_name
    location = var.location
    sku_name = var.sku_name
    tenant_id = var.tenant_id
}