# variables defined in terraform workspace
variable "tenant_id" {
  description = "tenant id"
  type        = string
}

variable "subscription_id" {
  description = "subscription id"
  type        = string
}

variable "deploy_client_id" {
  description = "deploy client id"
  type        = string
}

variable "deploy_client_secret" {
  description = "deploy client secret"
  type        = string
}

# variables defined from input file
variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "tf_deploy_principal_id" {
  description = "tf deploy principal id"
  type        = string
}

variable "sql_admin_username" {
  type        = string
  description = "(Required) Specifies The login name of the SQL administrator."
  sensitive   = true
}

variable "sql_admin_password" {
  type        = string
  description = "(Required) The Password associated with the SQL administrator."
  sensitive   = true
}

variable "aad_admin_login" {
  type        = string
  description = "(Required) AAD Admin login."
}

variable "aad_admin_object_id" {
  type        = string
  description = "(Required) AAD Admin Object id."
}