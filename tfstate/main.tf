##################################################################################
# LOCALS
##################################################################################
locals {
  #resource_group_name    = "davetest-rg"
  #storage_account_name   = "sk4redtest1234"
  container_name         = "terraform-state"
}
##################################################################################
# RESOURCES
##################################################################################
# Azure Storage Account
resource "azurerm_resource_group" "setup" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.setup.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
  shared_access_key_enabled = false
  allow_blob_public_access = false
}
resource "azurerm_storage_container" "ct" {
  name                 = local.container_name
  storage_account_name = azurerm_storage_account.sa.name
}



