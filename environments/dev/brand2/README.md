<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.57.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.57.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_avm-res-keyvault-vault"></a> [avm-res-keyvault-vault](#module\_avm-res-keyvault-vault) | Azure/avm-res-keyvault-vault/azurerm | 0.10.2 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.57.0/docs/resources/resource_group) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/4.57.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Name of the application | `string` | `"app1"` | no |
| <a name="input_brand_short"></a> [brand\_short](#input\_brand\_short) | Short name of the brand/client, eg. wal, cor, sec | `string` | `"b2"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | target environment | `string` | `"dev"` | no |
| <a name="input_keyvault_ip_rules"></a> [keyvault\_ip\_rules](#input\_keyvault\_ip\_rules) | IP addresses allowed to access the key vault. | `list(string)` | <pre>[<br/>  "188.151.174.87/32"<br/>]</pre> | no |
| <a name="input_keyvault_rbac"></a> [keyvault\_rbac](#input\_keyvault\_rbac) | n/a | <pre>map(object({<br/>    role_definition_id_or_name = string<br/>    principal_id               = string<br/>  }))</pre> | <pre>{<br/>  "joel": {<br/>    "principal_id": "9aff0db7-a493-46e5-bc86-7cdb5d5ce7ae",<br/>    "role_definition_id_or_name": "Key Vault Administrator"<br/>  },<br/>  "test-user-1": {<br/>    "principal_id": "6508a74f-87cc-4982-b878-efa25366b237",<br/>    "role_definition_id_or_name": "Key Vault Reader"<br/>  }<br/>}</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the deployment | `string` | `"swedencentral"` | no |
| <a name="input_location_short"></a> [location\_short](#input\_location\_short) | Short name for location of the deployment | `string` | `"sec"` | no |
| <a name="input_resource_number"></a> [resource\_number](#input\_resource\_number) | resource numbering for differentiation | `string` | `"01"` | no |
| <a name="input_secrets_value"></a> [secrets\_value](#input\_secrets\_value) | n/a | `map(string)` | <pre>{<br/>  "testSecret": "SecretTest",<br/>  "testSecret2": "SecretTest2"<br/>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | <pre>object({<br/>    env   = string<br/>    owner = string<br/>  })</pre> | <pre>{<br/>  "env": "Dev",<br/>  "owner": "Joel"<br/>}</pre> | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant ID of the Azure environment | `string` | `"4ba7b163-4371-4f4a-b92f-179bea887989"` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | Set of strings containing the vnet address space. | `set(string)` | <pre>[<br/>  "10.2.0.0/24"<br/>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | Resource ID of the resource group. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Name of the resource group. |
<!-- END_TF_DOCS -->