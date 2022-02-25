##################################################################################
# TERRAFORM CONFIG
##################################################################################
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.97.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.18.0"
    }
  }
}
##################################################################################
# PROVIDERS
##################################################################################
provider "azurerm" {
  features {}
  storage_use_azuread = true
}