resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = var.rg-name
  virtual_network_name = var.vnet_name
  address_prefixes     = ["10.0.2.0/24"]
}

