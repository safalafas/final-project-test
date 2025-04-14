output "aks_test_kube_config" {
  value     = azurerm_kubernetes_cluster.fp13_test_aks.kube_config_raw
  sensitive = true
}

output "aks_prod_kube_config" {
  value     = azurerm_kubernetes_cluster.fp13_prod_aks.kube_config_raw
  sensitive = true
}
