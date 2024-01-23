resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       =  var.addr-space #["10.0.0.0/16"] 
  location            = var.rg-location
  resource_group_name = var.rg-name
}