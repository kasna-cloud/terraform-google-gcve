# terraform-google-gcve


Enable Compute API

Service Networking API

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address\_purpose | Purpose value to use in google\_compute\_global\_address resource | `string` | `"VPC_PEERING"` | no |
| address\_type | Address type value to use in google\_compute\_global\_address resource | `string` | `"INTERNAL"` | no |
| labels | Key-value map of labels to assign | `map(any)` | `{}` | no |
| network\_descr | Description for the VPC network to create | `string` | `""` | no |
| network\_name | Name of the VPC network to create | `string` | n/a | yes |
| peering | Peering value to use in google\_compute\_network\_peering\_routes\_config resource | `string` | `"servicenetworking-googleapis-com"` | no |
| project | The project ID to deploy to | `string` | n/a | yes |
| region | The region to use | `string` | n/a | yes |
| reserved1\_address | Address of first network reserved for GCVE | `string` | n/a | yes |
| reserved1\_address\_prefix\_length | Prefix length of first network reserved for GCVE | `number` | n/a | yes |
| reserved1\_name | Name of first network reserved for GCVE | `string` | n/a | yes |
| reserved2\_address | Address of first network reserved for GCVE | `string` | n/a | yes |
| reserved2\_address\_prefix\_length | Prefix length of first network reserved for GCVE | `number` | n/a | yes |
| reserved2\_name | Name of first network reserved for GCVE | `string` | n/a | yes |
| service | Service value to use in google\_service\_networking\_connection resource | `string` | `"servicenetworking.googleapis.com"` | no |
| subnet\_cidr | CIDR of the subnet to create | `string` | n/a | yes |
| subnet\_name | Name of the subnet to create | `string` | n/a | yes |
| zone | The zone to use | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->