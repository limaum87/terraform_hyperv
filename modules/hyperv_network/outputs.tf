output "switch_name" {
  description = "Nome do switch de rede criado"
  value       = hyperv_network_switch.dmz_network_switch.name
}

output "switch_type" {
  description = "Tipo do switch criado"
  value       = hyperv_network_switch.dmz_network_switch.switch_type
}
