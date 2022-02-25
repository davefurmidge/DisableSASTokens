#############################################################################
# VARIABLES
#############################################################################
variable "location" {
  description = "(Optional) Region where the Azure resources will be created. Defaults to East US."
  type        = string
  default     = "uksouth"
}
variable "resource_group_name" {
  type        = string
  default     = "tfstate-rg"
  description = "resource group name"
}
 
variable "storage_account_name" {
  default     = "tfstateresourcestor"
  type        = string
  description = "storage account name"
}
