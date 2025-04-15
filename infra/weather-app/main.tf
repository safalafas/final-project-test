provider "azurerm" {
  features {}   
  
}
resource "azurerm_container_registry" "acr" {
  name                = "weatherappacr"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
}

resource "azurerm_redis_cache" "test" {
  name                = "weatherapp-test-redis"
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = 1
  family              = "C"
  sku_name            = "Basic"
}

resource "azurerm_redis_cache" "prod" {
  name                = "weatherapp-prod-redis"
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
}

// Add Kubernetes Deployment and Service definitions here
resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "weatherapp-k8s"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "weatherapp"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size   = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
