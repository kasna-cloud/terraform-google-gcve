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


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->