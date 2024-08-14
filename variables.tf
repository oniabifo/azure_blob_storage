variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-example-storage"
}

variable "location" {
  description = "The Azure region to deploy resources in"
  type        = string
  default     = "centralus"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "aspire-storage"
}

variable "container_name" {
  description = "The name of the storage container"
  type        = string
  default     = "aspire-container"
}

# variable "blob_name" {
#   description = "The name of the blob"
#   type        = string
#   default     = "my-awesome-content.zip"
# }

# variable "source_file_path" {
#   description = "The local file path for the blob source"
#   type        = string
#   default     = "some-local-file.zip"
# }
