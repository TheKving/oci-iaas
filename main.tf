terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region              = var.region
  auth                = "SecurityToken"
  config_file_profile = "terraform-iaas"
}

module "network" {
  source          = "./modules/network"
  account_secrets = var.account_secrets
}
