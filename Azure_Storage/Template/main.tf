# Create Azure Resource Group

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.resource_group_tags
}

#Create Azure Storage Account 
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.account_replication_type
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"

}

#Create Azure Storage Container
resource "azurerm_storage_container" "example" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"

}

# Create Azure Queue Storage
resource "azurerm_storage_queue" "example" {
  name                 = var.queue_storage_name
  storage_account_name = azurerm_storage_account.example.name

}

# Create Azure File Share 

resource "azurerm_storage_share" "example" {
  name                 = var.storage_share_file_name
  storage_account_name = azurerm_storage_account.example.name
  quota                = 50
}

# Create Azure ADLS Gen2 filesystem

resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  name               = var.data_lake_filesystem_name
  storage_account_id = azurerm_storage_account.example.id

}

