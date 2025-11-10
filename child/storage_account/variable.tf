variable "storage_account" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_replication_type = string
    account_tier             = string
    })
  )
}
