resource "azurerm_virtual_machine" "main" {
  name                  = "${var.prefix}-vm"
  location              = var.rg-location
  resource_group_name   =  var.rg-name
  network_interface_ids = [var.nic_id]#[azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"


  delete_os_disk_on_termination = true

  
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}