terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.88.1"
    }
  }
}


provider "azurerm" {
  features  {}
  // subscription_id = var.subscription_id
  // client_secret = var.client_secret
  // client_id = var.client_id
  // tenant_id = var.tenant_id
  backend "azurerm" {
    storage_account_name = "terraform12345eb"
    container_name = "tfstate"
  }
}