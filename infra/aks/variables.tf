variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "cst8918-fp13-aks-rg"
}

variable "kubernetes_version" {
  description = "Kubernetes Version"
  type        = string
  default     = "1.32.0"
}

variable "vm_size" {
  description = "Virtual Machine Size"
  type        = string
  default     = "Standard_B2s"
}

variable "aks_test_node_count" {
  description = "Node Count for AKS Test Cluster"
  type        = number
  default     = 1
}

variable "aks_prod_node_count" {
  description = "Node Count for AKS Prod Cluster"
  type        = number
  default     = 1
}

variable "aks_test_dns_prefix" {
  description = "DNS Prefix for AKS Test Cluster"
  type        = string
  default     = "aks-test"
}

variable "aks_prod_dns_prefix" {
  description = "DNS Prefix for AKS Prod Cluster"
  type        = string
  default     = "aks-prod"
}

variable "test_dns_prefix" {
  description = "DNS Prefix for Test AKS Cluster"
  type        = string
  default     = "test-dns"
}

variable "prod_dns_prefix" {
  description = "DNS Prefix for Prod AKS Cluster"
  type        = string
  default     = "prod-dns"
}

variable "test_node_count" {
  description = "Node count for Test AKS Cluster"
  type        = number
  default     = 1
}

variable "prod_node_count" {
  description = "Node count for Prod AKS Cluster"
  type        = number
  default     = 3
}
