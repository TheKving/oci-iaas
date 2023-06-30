terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.2.1"
    }
  }
}

terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "kving"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "oci-iaas"
    }
  }
}


provider "oci" {
  #  auth                = "SecurityToken"
  #  config_file_profile = "terraform-iaas"
  region               = var.region
  user_ocid            = var.oci_user
  private_key          = var.oci_private_key
  fingerprint          = var.oci_key_fingerprint
  tenancy_ocid         = var.oci_tenancy_ocid
  disable_auto_retries = true
}

module "dns" {
  source    = "./modules/dns"
  api_token = var.cf_api_token
}

module "network" {
  source              = "./modules/network"
  oci_tenancy_ocid    = var.oci_tenancy_ocid
  test_publicdns_name = module.dns.public_dns_cloudflare_name
}
