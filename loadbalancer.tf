/*module "loadbalancer" {
  source  = "app.terraform.io/bits_project_PLS/loadbalancer/azurerm"
  version = "1.0.0"

  resource_group_name = var.resource_group_name
  name                = "bits-pls-lb01"
  lb_sku              = "Standard"
  lb_sku_tier         = "Regional"

  frontend_name                          = "bitpls-lib01"
  frontend_private_ip_address_allocation = "Dynamic"
  frontend_private_ip_address_version    = "IPv4"
  frontend_subnet_name                   = var.subnet_name
  frontend_vnet_name                     = var.virtual_network_name
  lb_floating_ip_enabled                 = true
  # disable_outbound_snat = ture

  lb_port = {
    "lib01-ib-rule-5432" = ["5432", "Tcp", "5432"]
    "webserver22"        = ["80", "Tcp", "80"]
    "22"                 = ["22", "Tcp", "22"]
  }

  lb_probe = {
    "aws-postgres-health" = ["Tcp", "5432", ""]
    "httpd"               = ["Tcp", "80", ""]
    "22"                  = ["Tcp", "22", ""]
  }

}*/