variable "tenant_id" {
  default     = "4ba7b163-4371-4f4a-b92f-179bea887989"
  description = "Tenant ID of the Azure environment"
}

variable "location" {
  default     = "swedencentral"
  description = "Location of the deployment"
  type        = string
}

variable "location_short" {
  default     = "sec"
  description = "Short name for location of the deployment"
  type        = string
}

variable "resource_number" {
  default     = "01"
  description = "resource numbering for differentiation"
  type        = string
}

variable "environment" {
  default     = "dev"
  description = "target environment"
  type        = string
}

variable "application_name" {
  default = "joeltest"
  type    = string
}

variable "tags" {
  type = object({
    env   = string
    owner = string
  })
  default = {
    env   = "Dev"
    owner = "Joel"
  }
}

variable "keyvault_rbac" {
  type = map(object({
    role_definition_id_or_name = string
    principal_id               = string
  }))
  default = {
    "joel" = {
      role_definition_id_or_name = "Key Vault Administrator"
      principal_id               = "9aff0db7-a493-46e5-bc86-7cdb5d5ce7ae"
    }
    "test-user-1" = {
      role_definition_id_or_name = "Key Vault Reader"
      principal_id               = "6508a74f-87cc-4982-b878-efa25366b237"
    }
  }
}

variable "keyvault_ip_rules" {
  type        = list(string)
  description = "IP addresses allowed to access the key vault."
  default = [
    "188.151.174.87/32"
  ]
}

variable "secrets_value" {
  type      = map(string)
  sensitive = true
  default = {
    testSecret = "SecretTest"
    testSecret2 = "SecretTest2"
  }
}
