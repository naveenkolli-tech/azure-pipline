variable "resource_group_name" {
  type        = string
  description = "Resource group for the web app"
}

variable "location" {
  type    = string
  default = "eastus2"
}

variable "app_name" {
  type        = string
  description = "Globally unique web app name"
}

variable "environment" {
  type    = string
  default = "dev"
}
