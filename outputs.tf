# Exibir o IP do Hyper-V
output "hyperv_host" {
  description = "Hyper-V Host IP ou Nome"
  value       = var.hyperv_host
}

# Exibir o caminho do VHD
output "vhd_path" {
  description = "Caminho do VHD criado"
  value       = var.vhd_path
}

# Exibir o caminho do ISO
output "iso_path" {
  description = "Caminho do ISO utilizado"
  value       = var.iso_path
}

# Exibir o nome do switch de rede
output "network_switch" {
  description = "Switch de rede usado pela VM"
  value       = var.network_switch
}
