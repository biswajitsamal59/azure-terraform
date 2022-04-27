terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 2.93.0"
        }
    }
}

provider "azurerm" {
    subscription_id = "a81c07e9-cd6c-4bf7-85ae-fc498097f717"
    features {}
}

resource "azurerm_resource_group" "terraform-rg" {
    name = "terraform-rg"
    location = "East US 2"
}