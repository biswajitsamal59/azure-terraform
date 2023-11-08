terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 3.79.0"
        }
    }
    backend "azurerm" {
        key = "terraform.tfstate"
    }
}

provider "azurerm" {
    skip_provider_registration = true
    features {}
}

resource "azurerm_resource_group" "terraform-rg" {
    name = var.resource_group_name
    location = var.resource_group_location
}
