provider "azurerm" {
  features {}
  use_cli         = true
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "network_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "main_vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.network_rg.location
  resource_group_name = azurerm_resource_group.network_rg.name
}

resource "azurerm_subnet" "prod" {
  name                 = var.prod_subnet_name
  resource_group_name  = azurerm_resource_group.network_rg.name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = var.prod_subnet_address_prefixes
}

resource "azurerm_subnet" "test" {
  name                 = var.test_subnet_name
  resource_group_name  = azurerm_resource_group.network_rg.name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = var.test_subnet_address_prefixes
}

resource "azurerm_subnet" "dev" {
  name                 = var.dev_subnet_name
  resource_group_name  = azurerm_resource_group.network_rg.name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = var.dev_subnet_address_prefixes
}

resource "azurerm_subnet" "admin" {
  name                 = var.admin_subnet_name
  resource_group_name  = azurerm_resource_group.network_rg.name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = var.admin_subnet_address_prefixes
}
