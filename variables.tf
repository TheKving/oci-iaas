variable "region" {
  default     = "uk-london-1"
  description = "Account region"
  type        = string
}

variable "account_secrets" {
  description = "Secrets from GitHub"
  type        = map(any)
  default = {
    #account_id     = env("ACCOUNT_ID"),
    compartment_id = var.secrets["COMPARTMENT_ID"],
    #username       = env("USERNAME"),
  }
}