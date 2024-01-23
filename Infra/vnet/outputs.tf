output "vnet_name" {
  description = "Name of the created vnet"
  value       = azurerm_virtual_network.main.name # Assuming `azurerm_subnet.example` refers to your subnet resource
}