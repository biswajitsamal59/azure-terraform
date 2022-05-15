terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 3.0.0"
        }
    }
}

provider "azurerm" {
    subscription_id = "c02fd757-b403-434f-b3e7-9b6b1485ba1b"
    features {}
}

resource "azurerm_resource_group" "terraform-rg" {
    name = var.resource_group_name
    location = var.resource_group_location
}
