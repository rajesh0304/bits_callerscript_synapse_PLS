resource "azurerm_role_assignment" "rg_deploy_sbdc" {
  scope                = data.azurerm_resource_group.rg_pls.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.tf_deploy_principal_id
}