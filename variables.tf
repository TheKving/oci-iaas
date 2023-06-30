# Oracle Cloud
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

variable "public_domain" {
  description = "Public domain name"
  type        = string
}

# Cloudflare
variable "cf_api_token" {
  type        = string
  description = "API Token Cloudflare"
}

variable "cf_account_id" {
  type        = string
  description = "Account ID Cloudflare"
}