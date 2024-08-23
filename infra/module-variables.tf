variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku_name" {
  type = string
  validation {
    condition = contains(["standard", "premium"], var.sku_name)
    error_message = "value should by standard or premium"
  }
}

variable "tenant_id" {
  type = string
}

variable "access_policy" {
  type = list(object({
    tenant_id = string
    object_id = string
    application_id = optional(string)
    certificate_permissions = optional(list(string))
    key_permissions = optional(string)
    secret_permissions = optional(string)
    storage_permissions = optional(string)
  }))
  default = []
}

variable "enabled_for_deployment" {
  type = bool
  default = false
}

variable "enabled_for_disk_encryption" {
  type = bool
  default = false
}

variable "enabled_for_template_deployment" {
  type = bool
  default = false
}

variable "enabled_rbac_authorization" {
  type = bool
}

variable "network_acls" {
  type = object({
    bypass = string
    default_action = string
    ip_rules = optional(list(string))
    virtual_network_subnet_ids = optional(list(string))
  })
  default = {}
}

variable "purge_protection_enabled" {
  type = bool
}

variable "public_network_access_enabled" {
  type = bool
  default = true
}

variable "soft_delete_retention_days" {
  type = number
  default = 90
}

variable "contact" {
  type = map(object({
    email = string
    name = optional(string)
    phone = optional(string)
  }))
  default = {}
}

variable "tags" {
  type = map(string)
  default = {}
}