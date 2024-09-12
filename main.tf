resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "centralus"
}

resource "azurerm_storage_account" "aspire_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Premium"
  account_kind             = "FileStorage"
  account_replication_type = "LRS"
  large_file_share_enabled = true
}

resource "azurerm_storage_share" "aspire_share" {
  name                 = var.storage_account_name
  storage_account_name = azurerm_storage_account.aspire_storage.name
  quota                = 5000

  acl {
    id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"

    access_policy {
      permissions = "rwdl"
      start       = "2019-07-02T09:38:21.0000000Z"
      expiry      = "2030-07-02T10:38:21.0000000Z"
    }
  }
  enabled_protocol = "SMB"
}