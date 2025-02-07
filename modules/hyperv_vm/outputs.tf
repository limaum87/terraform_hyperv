output "vm_name" {
  description = "Nome da máquina virtual"
  value       = hyperv_machine_instance.default.name
}

output "vm_status" {
  description = "Estado atual da VM"
  value       = hyperv_machine_instance.default.state
}
