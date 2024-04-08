module "pls-linux-vm" {
  source  = "app.terraform.io/bits_project_PLS/pls-linux-vm/azurerm"
  version = "1.0.0"
  resource_group_name = var.resource_group_name
  subnet_id = var.subnet_name
    monitoring_function_enabled = false
  vm_monitoring_enabled       = true
  backup_vm_enabled           = true
  update_center_enabled       = true

}