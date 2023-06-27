variable "region" {
  default     = "uk-london-1"
  description = "Account region"
  type        = string
}

variable "oci_compartment_id" {
  type        = string
  description = "Compartment ID OCI"
  #default = var.TF_VAR_compartment_id
}
#API Token from cloudflare
variable "cf_api_token" {
  type        = string
  description = "API Token Cloudflare"
}
