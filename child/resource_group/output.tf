output "rg_name" {
  value = { for k, v in azurerm_resource_group.rgblock : k => v.name }
}

output "rg_id" {
  value = { for k, v in azurerm_resource_group.rgblock : k => v.id }
}
