output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_names" {
  value = [for s in azurerm_subnet.subnet : s.name]
}

output "subnet_ids" {
  value = [for s in azurerm_subnet.subnet : s.id]
}
