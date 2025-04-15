terraform {
  
  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name  = "cst8918-fp13-backend-rg"
    storage_account_name = "cst8918fp13storage"
    container_name       = "tfstate"
    key                  = "fp13.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.2"
    }
  }
}
