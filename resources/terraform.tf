##################################################################################
# TERRAFORM CONFIG
##################################################################################
terraform {
  backend "azurerm" {
        use_azuread_auth     = true
# only hard coding these for demo purposes
##################################################################        
        resource_group_name = "tfstate-rg"
        storage_account_name = "tfstateresourcestor"
###################################################################
        container_name = "terraform-state"
        key = "tfstate"
    }  
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