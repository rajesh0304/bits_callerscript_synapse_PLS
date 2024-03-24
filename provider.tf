terraform {
  cloud {
    organization = "bits_project_PLS"

    workspaces {
      name = "bits_pls"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true

  client_id       = var.deploy_client_id
  client_secret   = var.deploy_client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}