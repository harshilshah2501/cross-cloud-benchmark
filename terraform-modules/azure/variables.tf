variable "subscription_id" {
  description = "Azure subscription ID"
}

variable "tenant_id" {
  description = "Azure tenant ID"
}

variable "client_id" {
  description = "Azure client ID"
}

variable "client_secret" {
  description = "Azure client secret"
}

variable "location" {
  description = "Azure region"
  default     = "East US"
}

variable "admin_username" {
  description = "Admin username for the VM"
}

variable "admin_password" {
  description = "Admin password for the VM"
}

variable "image_resource_group" {
  description = "Resource group of the VM image"
}