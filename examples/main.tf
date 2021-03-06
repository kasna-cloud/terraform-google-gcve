module "gcve" {
  source                          = "kasna-cloud/gcve/google"
  version                         = "0.0.1"
  project                         = "banky-gcve-test"
  region                          = "us-west2"
  zone                            = "us-west2-a"
  network_name                    = "gcve-usw2"
  network_descr                   = "Network for testing of GCVE in USW2"
  subnet_name                     = "gcve-usw2-mgmt"
  subnet_cidr                     = "192.168.82.0/24"
  reserved1_name                  = "gcve-managemnt-ip-alloc"
  reserved1_address               = "192.168.80.0"
  reserved1_address_prefix_length = 23
  reserved2_name                  = "gcve-workload-ip-alloc"
  reserved2_address               = "192.168.84.0"
  reserved2_address_prefix_length = 23
  address_purpose                 = "VPC_PEERING"
  address_type                    = "INTERNAL"
  service                         = "servicenetworking.googleapis.com"
  peering                         = "servicenetworking-googleapis-com"
}