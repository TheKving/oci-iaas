variable "region" {
  default     = "uk-london-1"
  description = "Account region"
  type        = string
}

variable "compartment_id_env" {
  description = "Compartment ID from environment variable"
  type        = string
  default     = var.secrets["COMPARTMENT_ID"]
}

variable "account_secrets" {
  description = "Secrets from GitHub"
  type        = map(any)
  default = {
    #account_id     = env("ACCOUNT_ID"),
    compartment_id = env("COMPARTMENT_ID"),
    #username       = env("USERNAME"),
  }
}