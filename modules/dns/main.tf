/*
    Read doc in
        https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs
        https://developers.cloudflare.com/terraform/tutorial/
        https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record
*/
# Configure the Cloudflare provider using the required_providers stanza
# required with Terraform 0.13 and beyond. You may optionally use version
# directive to prevent breaking changes occurring unannounced.
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.api_token
}

resource "cloudflare_record" "www" {
  zone_id = "var.cloudflare_zone_id"
  name    = "terraform"
  value   = "127.0.0.1"
  type    = "A"
  ttl     = 3600
}
/*
# Create a page rule
resource "cloudflare_page_rule" "www" {
  # ...
}*/