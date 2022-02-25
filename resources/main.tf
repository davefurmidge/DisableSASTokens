data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example-rg" {
  name     = var.resource_group_name
  location = var.location
}
 
# Create Storage Account
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example-rg.name
  location                 = azurerm_resource_group.example-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  tags = {
    environment = "dev"
  }
 
  
}