# Resource group
variable "resource_group_name" {
    type = string
    description = "Resource group name"
}

variable "resource_group_location" {
    type = string
    description = "Resource group location"
}

# Storage account
variable "storage_account_name" {
    type = string
    description = "Storage account name"
}

variable "storage_container_name" {
    type = string
    description = "Storage container name"
}

variable "blob_storage_name" {
    type = string
    description = "Blob storage name"
}

# Virtual network
variable "virtual_network_name" {
    type = string
    description = "Virtual network name"
}

variable "virtual_network_address" {
    type = list(string)
    description = "Addess space for virtual network"
    default = [ "10.0.0.0/16" ]
}

variable "virtual_network_subnet" {
    type = list(string)
    description = "List of subnet of address"
    default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}