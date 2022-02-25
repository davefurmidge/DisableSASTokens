variable "location" {
  type        = string
  default     = "uksouth"
  description = "default resources location"
}
variable "resource_group_name" {
  type        = string
  default     = "dfresource-rg"
  description = "resource group name"
}
 
variable "storage_account_name" {
  default     = "dfresourcestor"
  type        = string
  description = "storage account name"
}