provider "azurerm" {
  features {}
  use_cli         = true
  subscription_id = var.subscription_id
}

# AKS Test Cluster
resource "azurerm_kubernetes_cluster" "fp13_test_aks" {
  name                = "fp13-test-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.test_dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.test_node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = var.kubernetes_version
  lifecycle {
    ignore_changes = [
      default_node_pool[0].node_count
    ]
  }
}

# AKS Prod Cluster
resource "azurerm_kubernetes_cluster" "fp13_prod_aks" {
  name                = "fp13-prod-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.prod_dns_prefix

  default_node_pool {
    name       = "default"
    vm_size    = var.vm_size
    node_count = var.prod_node_count
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = var.kubernetes_version
}


