resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = var.oci_tenancy_ocid
  display_name   = var.test_publicdns_name
}