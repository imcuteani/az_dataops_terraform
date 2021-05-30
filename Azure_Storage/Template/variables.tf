variable "subscription_id" {
  type        = string
  description = "The Subscription Id for Azure account"
}

variable "client_id" {
  type        = string
  description = "The Client Id of the service principal"
}

variable "client_secret" {
  type        = string
  description = "The client secret of the service pricipal"
}

variable "tenant_id" {
  type        = string
  description = "the tenant Id of the directory"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group of Azure Firewall resource"
}

variable "resource_group_location" {
  type        = string
  description = "The location of the resource group"
}

variable "resource_group_tags" {
  type        = map(string)
  default     = { OWNER = "Anindita Basak", Origin = "az-database", ReasonCreated = "certification" }
  description = "The Azure Resource group tags"
}

variable "storage_account_name" {
  type        = string
  description = "The Storage account name"
}

variable "storage_account_tier" {
  type        = string
  description = "The Storage account tier"
}

variable "account_replication_type" {
  type        = string
  description = "The Storage account replication type"
}

variable "storage_container_name" {
  type        = string
  description = "The storage account container name"

}

variable "queue_storage_name" {
  type        = string
  description = "The Storage account Queue name"
}

variable "storage_share_file_name" {
  type        = string
  description = "The Storage account file share"
}

variable "data_lake_filesystem_name" {
  type        = string
  description = "The Azure Data Lake Gen2 filesystem name"

}