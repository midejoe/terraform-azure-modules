resource "azurerm_resource_group" "example" {
  name     = var.rg-name
  location = var.rg-location
}

variable "rg-name" {
  type = string
  description = "test-name"
}