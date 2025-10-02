output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}

output "storage_account_primary_endpoint" {
  value = azurerm_storage_account.storage.primary_blob_endpoint
}
