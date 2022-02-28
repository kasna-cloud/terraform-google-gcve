# terraform-google-gcve

This Terraform module code will create a VPC network, subnet, and additional configuration that is ready to peer with a Google Cloud VMware Engine (GCVE) environment. To use this module you should have an existing GCVE cluster, and a Terraform environment that is configured to work with your GCP project.

In order to use this module you will need to firstly have the following API's enabled in your project:
- Compute API
- Service Networking API

The module was derived Network Brouhaha excellent work here: http://networkbrouhaha.com/2021/02/gcp-vpc-to-gcve/

This Terraform module will do the following:

*   Create a VPC network
*   Create a subnet in the new VPC network that will be used to communicate with GCVE
*   Create two Global Address pools that will be used to reserve addresses used in GCVE
*   Create a private connection in the new VPC, using the two address pools as reserved ranges
*   Enable import and export of custom routes for the VPC

After configuration is completed by Terraform, you will be able to complete peering with the new VPC in GCVE. Further information about peering a VPC with GCVE is documented in [Setting up private service access](https://cloud.google.com/vmware-engine/docs/networking/howto-setup-private-service-access).  


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