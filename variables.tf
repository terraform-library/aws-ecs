variable "name" {
  description = "Name  (e.g. `bastion` or `db`)"
  type        = "string"
}

variable "environment" {
  description = "Environment (e.g. `prod`, `dev`, `staging`)"
  type        = "string"
}

variable "managedby" {
  description = "Managedby (e.g. `cp` or `terraform-library`)"
  type        = "string"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `name`, `environment`, `managedby`, etc."
}

variable "ses_domain" {
  description = "Domain to use for SES"
}

variable "hosted_zone_id" {
  description = "Route 53 zone ID for the SES domain verification"
}