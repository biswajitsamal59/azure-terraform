resource "azurerm_resource_group" "terraform-rg" {
    name = var.resource_group_name
    location = var.resource_group_location
}

# resource "azurerm_management_lock" "resource-group-level" {
#   name       = "resource-group-level"
#   scope      = azurerm_resource_group.terraform-rg.id
#   lock_level = "ReadOnly"
#   notes      = "This Resource Group is Read-Only"
# }