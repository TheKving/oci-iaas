variable "region" {
  default     = "uk-london-1"
  description = "Account region"
  type        = string
}

variable "oci_user" {
  description = "OCI user"
  type        = string
}

variable "oci_private_key" {
  description = "OCI private key"
  type        = string
}

variable "oci_key_fingerprint" {
  description = "OCI key fringerprint"
  type        = string
}

variable "oci_tenancy_ocid" {
  description = "OCI tenancy"
  type        = string
}

/*
variable "account" {
  type = map(string)
  default = {
    region       = "var.region"
    user         = "var.oci_user"
    private_key  = "var.oci_private_key"
    fingerprint  = "var.oci_key_fingerprint"
    tenancy_ocid = "var.oci_tenancy_ocid"
  }
}*/

variable "cf_api_token" {
  type        = string
  description = "API Token Cloudflare"
}
