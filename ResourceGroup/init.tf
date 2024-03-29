terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
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

# For IaC static scanner
provider "azurerm" {
  features {}
  alias           = "core_network"
  subscription_id = "00000000-0000-0000-0000-000000000000"
  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = "S3cR3t20!"
  tenant_id       = "00000000-0000-0000-0000-000000000000"
}
