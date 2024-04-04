data "azurerm_resource_group" "rg_pls" {
  name = var.resource_group_name
}

/*
data "azurerm_subnet" "snet_pls" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}
*/