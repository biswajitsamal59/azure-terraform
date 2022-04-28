# Create a Storage Account
resource "azurerm_storage_account" "terraform-storage" {
    name = "terraformstorage59"
    resource_group_name = azurerm_resource_group.terraform-rg.name
    location = azurerm_resource_group.terraform-rg.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}

# Create a Container
resource "azurerm_storage_container" "data" {
    name = "data"
    storage_account_name = azurerm_storage_account.terraform-storage
    container_access_type = "private"
}

# Upload a local file to container
resource "azurerm_storage_blob" "sample" {
    name = "sample.txt"
    storage_account_name = azurerm_storage_account.terraform-storage.name
    storage_container_name = azurerm_storage_container.data.name
    type = "Block"
    source = "sample.txt"
}