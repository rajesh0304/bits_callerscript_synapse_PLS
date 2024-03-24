resource "azurerm_role_assignment" "rg_deploy_sbdc" {
  scope                = data.azurerm_resource_group.rg_pls.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.tf_deploy_principal_id
}

resource "azurerm_synapse_role_assignment" "synw01_aadadm_SynAdmin" {
  synapse_workspace_id = module.synapse-exfiltration.syn_id
  role_name            = "Synapse Administrator"
  principal_id         = var.aad_admin_object_id
}