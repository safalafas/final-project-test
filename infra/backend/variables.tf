variable "resource_group_name" {
  description = "Name of the resource group to use"
  type        = string
  default     = "cst8918-fp13-backend-rg"
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
  default     = "cst8918fp13storage"
}

variable "container_name" {
  description = "Name of the container that stores the state file"
  type        = string
  default     = "tfstate"
}

variable "backend_state_key" {
  description = "The name of the .tfstate blob file"
  type        = string
  default     = "fp13.terraform.tfstate"
}

variable "location" {
  description = "The Azure region for the resources"
  type        = string
  default     = "canadacentral"
}
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "arm_access_key" {
  description = "Azure Storage Account access key"
  type        = string
  sensitive   = true
}
