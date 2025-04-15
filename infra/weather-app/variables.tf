variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which resources will be created."
  type        = string
  default     = "cst8918-fp13-weatherapp-rg"
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "canadacentral"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
  default     = "weatherappacr"
}

variable "redis_test_name" {
  description = "Name of the Redis Cache for the test environment"
  type        = string
  default     = "weatherapp-test-redis"
}

variable "redis_prod_name" {
  description = "Name of the Redis Cache for the production environment"
  type        = string
  default     = "weatherapp-prod-redis"
}

variable "redis_test_capacity" {
  description = "Capacity of the Redis Cache for the test environment"
  type        = number
  default     = 1
}

variable "redis_prod_capacity" {
  description = "Capacity of the Redis Cache for the production environment"
  type        = number
  default     = 2
}

variable "redis_family" {
  description = "Family for the Redis Cache instances"
  type        = string
  default     = "C"
}

variable "redis_test_sku" {
  description = "SKU for the Redis Cache in the test environment"
  type        = string
  default     = "Basic"
}

variable "redis_prod_sku" {
  description = "SKU for the Redis Cache in the production environment"
  type        = string
  default     = "Standard"
}