terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
}



provider "azurerm" {
  features {}
  # subscription_id = "Enter your subscription id here"
  # skip_provider_registration = true
}
