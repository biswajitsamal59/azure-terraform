resource "azurerm_virtual_network" "terraform-vn" {
    name = var.virtual_network_name
    location = azurerm_resource_group.terraform-rg.location
    resource_group_name = azurerm_resource_group.terraform-rg.name
    address_space = var.virtual_network_address

    subnet {
      name = "subnetA"
      address_prefix = var.virtual_network_subnet[0]
    }

    subnet {
      name = "subnetB"
      address_prefix = var.virtual_network_subnet[1]
    }
}
