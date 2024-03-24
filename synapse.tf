module "synapse-exfiltration" {
  source  = "app.terraform.io/bits_project_PLS/synapse-exfiltration/azurerm"
  version = "2.0.0"

  resource_group_name = var.resource_group_name

  synapse_workspace_name    = "bits-pls-synw01"
  create_storage_account    = true
  storage_account_name      = "bitsplsadls02"
  data_lake_filesystem_name = "synw01-metadata"
  sql_admin_username        = var.sql_admin_username
  sql_admin_password        = var.sql_admin_password
  managed_rg_name           = "syn_managed_rg01"
  dep_enabled               = true

  identity_type = "SystemAssigned"

  aad_admin = {
    login     = var.aad_admin_login
    object_id = var.aad_admin_object_id
    tenant_id = var.tenant_id
  }

  # Spark pool config
  create_spark_pool  = true
  spark_pool_name    = "synw01sp01"
  spark_pause_in_min = 5
  spark_autoscale_setting = {
    min_node_count = 3
    max_node_count = 10
  }
}

resource "azurerm_synapse_firewall_rule" "synw01_fwr" {
  name                 = "AllowAll"
  synapse_workspace_id = module.synapse-exfiltration.syn_id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "255.255.255.255"
}