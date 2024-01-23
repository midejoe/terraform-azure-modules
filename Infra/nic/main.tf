resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = var.rg-location
  resource_group_name = var.rg-name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = var.subnet_id #azurerm_subnet.internal.id 
    private_ip_address_allocation = "Dynamic"
  }
}