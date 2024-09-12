variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "clickclaims-rg-storage-dev-01"
}

variable "location" {
  description = "The Azure region to deploy resources in"
  type        = string
  default     = "centralus"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "clickclaimsstoragedev"
}