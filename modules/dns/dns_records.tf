resource "cloudflare_zone" "domain" {
  account_id = var.account_id
  zone       = var.public_domain
}
resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.domain.id
  name    = "terraform"
  value   = "127.0.0.1"
  type    = "A"
  ttl     = 3600
}
