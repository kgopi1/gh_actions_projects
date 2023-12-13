terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0" # Azure providers
    }
  }

  backend "azurerm" {
    subscription_id      = "7d36b290-05bd-4bc4-a670-89b4e4749eb3"
    resource_group_name  = "vault-edu"
    storage_account_name = "kglab02tfstate"
    container_name       = "cda"
    key                  = "terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id
}


# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "sample-resources"
  location = "West Europe"
}
