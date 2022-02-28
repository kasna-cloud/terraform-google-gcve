variable "labels" {
description = "Key-value map of labels to assign"
  type = map(any)
  default     = {}
}

variable "network_name" {
  description = "Name of the VPC network to create"
  type = string
}

variable "network_descr" {
  description = "Description for the VPC network to create"
  type = string
  default     = ""
}

variable "subnet_name" {
  description = "Name of the subnet to create"
  type = string
}

variable "subnet_cidr" {
  description = "CIDR of the subnet to create"
  type = string
}

variable "reserved1_name" {
  description = "Name of first network reserved for GCVE"
  type = string
}

variable "reserved1_address" {
  description = "Address of first network reserved for GCVE"
  type = string
}

variable "reserved1_address_prefix_length" {
  description = "Prefix length of first network reserved for GCVE"
  type = number
}

variable "reserved2_name" {
  description = "Name of first network reserved for GCVE"
  type = string
}

variable "reserved2_address" {
  description = "Address of first network reserved for GCVE"
  type = string
}

variable "reserved2_address_prefix_length" {
  description = "Prefix length of first network reserved for GCVE"
  type = number
}

variable "project" {
  description = "The project ID to deploy to"
  type = string
}

variable "region" {
  description = "The region to use"
  type = string
}

variable "zone" {
  description = "The zone to use"
  type = string
}

variable "service" {
  description = "Service value to use in google_service_networking_connection resource"
  type = string
  default     = "servicenetworking.googleapis.com"
}

variable "peering" {
  description = "Peering value to use in google_compute_network_peering_routes_config resource"
  type = string
  default     = "servicenetworking-googleapis-com"
}

variable "address_purpose" {
  type = string
  default     = "VPC_PEERING"
  description = "Purpose value to use in google_compute_global_address resource"
}

variable "address_type" {
  type = string
  default     = "INTERNAL"
  description = "Address type value to use in google_compute_global_address resource"
}