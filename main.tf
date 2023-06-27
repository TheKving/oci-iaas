terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
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
  region              = var.region
  auth                = "SecurityToken"
  config_file_profile = "terraform-iaas"
}

module "network" {
  source         = "./modules/network"
  compartment_id = var.compartment_id
}
