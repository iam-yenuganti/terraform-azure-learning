# Resource Group
variable "rg_name" {
  type        = string
  default     = "rg-terraform-demo"
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "Azure region for resources"
}

# Storage Account
variable "storage_account_name" {
  type        = string
  description = "Globally unique storage account name"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}
