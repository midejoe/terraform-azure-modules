output "subnet_id" {
  description = "ID of the created subnet"
  value       = azurerm_subnet.internal.id  # Assuming `azurerm_subnet.example` refers to your subnet resource
}
