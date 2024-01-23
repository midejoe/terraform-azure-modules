output "nic_id" {
  description = "ID of the created nic"
  value       = azurerm_network_interface.main.id # Assuming `azurerm_subnet.example` refers to your subnet resource
}