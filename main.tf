module "kv_name" {
    source = "artifactoryibk.jfrog.io/terraform_ibk_modules__devsecops/ibk-naming-conventions-module/azure"
    version = "0.0.0-rc.0"
    
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