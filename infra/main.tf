module "kv_name" {
    source = "git@github.com:wyracocha/azure-naming-convention.git?ref=master"
    
    region = "eastus2"
    instance = "001"
    environment = "dev"
    project = "workload"
    resource_type = "kv"
}

resource "azurerm_key_vault" "example" {
    name = module.kv_name.name

}