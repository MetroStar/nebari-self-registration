# KEYCLOAK SETTINGS
# -----------------
variable "realm_id" {
  description = "Keycloak realm_id"
  type        = string
}

variable "client_id" {
  description = "OpenID Client ID"
  type        = string
}

variable "base_url" {
  description = "Default URL to use when the auth server needs to redirect or link back to the client"
  type        = string
}

variable "create_namespace" {
  type = bool
}

variable "external_url" {
  description = "External url for keycloak auth endpoint"
  type        = string
}

# SELF-REGISTRATION SETTINGS
# -----------------
variable "ingress_host" {
  description = "DNS name for Traefik host"
  type        = string
}

variable "chart_name" {
  description = "Name for self-registration chart and its namespaced resources."
  type        = string
}

variable "project_name" {
  description = "Project name to assign to Nebari resources"
  type        = string
}

variable "namespace" {
  type = string
}

variable "overrides" {
  type    = map(any)
  default = {}
}

variable "account_expiration_days" {
  description = "Days a self-registered account remains active before expiring."
  type        = number
  default     = 7
}

variable "approved_domains" {
  description = "Approved email domains for user self registration"
  type        = list(string)
  default     = []
}

variable "coupons" {
  description = "Valid coupons for user self registration"
  type        = list(string)
  default     = []
}

variable "registration_group" {
  description = "Name of Keycloak group to add registering users"
  type        = string
  default     = ""
}