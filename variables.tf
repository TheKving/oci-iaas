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

/*
variable "account_secrets" {
  description = "Secrets from GitHub"
  type        = map(any)
  default = {
    compartment_id = var.compartment_id
    #account_id     = env("ACCOUNT_ID"),
    #username       = env("USERNAME"),
  }
}*/