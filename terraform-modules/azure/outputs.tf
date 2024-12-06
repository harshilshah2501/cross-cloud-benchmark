output "vm_id" {
  description = "The ID of the created virtual machine"
  value       = azurerm_virtual_machine.main.id
}

output "vm_ip" {
  description = "The private IP of the VM"
  value       = azurerm_network_interface.main.private_ip_address
}