output "public_dns_cloudflare_name" {
    value = cloudflare_record.www.name
    description = "Public dns record"
}
