variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group to use"
  type        = string
  default     = "cst8918-fp13-backend-rg"
}

variable "location" {
  description = "The Azure region for the resources"
  type        = string
  default     = "canadacentral"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "cst8918-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/14"]
}

variable "prod_subnet_name" {
  description = "Name of the production subnet"
  type        = string
  default     = "prod-subnet"
}

variable "prod_subnet_address_prefixes" {
  description = "Address prefixes for the production subnet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "test_subnet_name" {
  description = "Name of the test subnet"
  type        = string
  default     = "test-subnet"
}

variable "test_subnet_address_prefixes" {
  description = "Address prefixes for the test subnet"
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "dev_subnet_name" {
  description = "Name of the development subnet"
  type        = string
  default     = "dev-subnet"
}

variable "dev_subnet_address_prefixes" {
  description = "Address prefixes for the development subnet"
  type        = list(string)
  default     = ["10.2.0.0/16"]
}

variable "admin_subnet_name" {
  description = "Name of the admin subnet"
  type        = string
  default     = "admin-subnet"
}

variable "admin_subnet_address_prefixes" {
  description = "Address prefixes for the admin subnet"
  type        = list(string)
  default     = ["10.3.0.0/16"]
}