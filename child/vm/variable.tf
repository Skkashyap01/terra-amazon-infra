variable "azurerm_virtual_machine" {
  type = map(object({
    name                  = string
    resource_group_name   = string
    location              = string
    size                  = string
    admin_username        = string
    admin_password        = string
    network_interface_ids = list(string)
    os_disk = object({
      caching              = string
      storage_account_type = string
    })
    data_disks = optional(list(object({
      lun                  = number
      caching              = string
      storage_account_type = string
      disk_size_gb         = number
    })), [])
  }))
}
