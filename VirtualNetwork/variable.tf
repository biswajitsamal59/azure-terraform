variable "virtual_network_name" {
  type = string
  description = "Virtual Network Name"
  default = "demo-vent"
}

variable "virtual_network_address" {
  type = list(string)
  description = "Virtual Network Address"
  default = [ "10.0.0.0/16" ]
}

variable "virtual_network_subnet" {
    type = list(string)
  description = "Virtual Network Subnet Address"
    default = [ "10.0.0.0/24", "10.0.0.1/24" ]
}