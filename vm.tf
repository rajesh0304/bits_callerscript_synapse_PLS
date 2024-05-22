/*module "pls-linux-vm" {
  source                      = "app.terraform.io/bits_project_PLS/pls-linux-vm/azurerm"
  version                     = "1.0.0"
  resource_group_name         = var.resource_group_name
  subnet_id                   = var.subnet_name
  //monitoring_function_enabled = false
  //vm_monitoring_enabled       = true
  //backup_vm_enabled           = true
  //update_center_enabled       = true

}*/
/*
resource "azurerm_network_interface" "nic" {
  name                = "linux-vm-bits-pls-nic-01"
  location            = "Southeast Asia"
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_name
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "linuxvm" {
  name                = "linux-vm-bits-pls-01"
  resource_group_name = var.resource_group_name
  location            = "Southeast Asia"
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("./id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}
*/