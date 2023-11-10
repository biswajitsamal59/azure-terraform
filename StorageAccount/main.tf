# Create a Storage Account
resource "azurerm_storage_account" "terraform-storage" {
    name = var.storage_account_name
    resource_group_name = azurerm_resource_group.terraform-rg.name
    location = azurerm_resource_group.terraform-rg.location
    account_kind = "BlobStorage"
    account_tier = "Standard"
    account_replication_type = "LRS"
    min_tls_version      = "TLS1_2"
    enable_https_traffic_only = true
}

# Create a Container
resource "azurerm_storage_container" "data" {
    name = var.storage_container_name
    storage_account_name = azurerm_storage_account.terraform-storage.name
    container_access_type = "private"
}

# Upload a local file to container
resource "azurerm_storage_blob" "sample" {
    name = var.blob_storage_name
    storage_account_name = azurerm_storage_account.terraform-storage.name
    storage_container_name = azurerm_storage_container.data.name
    type = "Block"
    source = "sample.txt"

    depends_on = [
        azurerm_storage_container.data
    ]
}