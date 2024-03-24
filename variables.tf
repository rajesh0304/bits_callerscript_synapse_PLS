
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

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "tf_deploy_principal_id" {
  description = "tf deploy principal id"
  type        = string
}