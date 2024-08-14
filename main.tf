resource "azurerm_resource_group" "rg" {
  name     = "rg-example-storage"
  location = "centralus"
}

resource "azurerm_storage_account" "sa" {
  name                     = "aspirestorage"  # Ensure the name is globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "content-container"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}


output "blob_storage_url" {
  value = "https://${azurerm_storage_account.sa.name}.blob.core.windows.net/${azurerm_storage_container.container.name}/"
}
