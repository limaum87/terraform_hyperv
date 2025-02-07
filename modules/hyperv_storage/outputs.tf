output "vhd_path" {
  description = "Caminho do VHD criado"
  value       = hyperv_vhd.web_server_vhd.path
}

output "iso_path" {
  description = "Caminho do ISO utilizado"
  value       = var.iso_path
}