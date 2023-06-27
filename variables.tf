variable "region" {
  default     = "uk-london-1"
  description = "Account region"
  type        = string
}

variable "compartment_id" {
  type = string
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