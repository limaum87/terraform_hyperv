# Criar o disco virtual (VHD)
resource "hyperv_vhd" "web_server_vhd" {
  path = var.vhd_path
  size = var.vhd_size
}

# Configuração do ISO (caso precise criar um novo)
resource "hyperv_iso_image" "bootstrap_iso" {
  count = var.create_iso ? 1 : 0

  source_iso_file_path      = var.source_iso_file_path
  destination_iso_file_path = var.iso_path
  volume_name               = "BOOTSTRAP"
  iso_media_type            = "dvdplusrw_duallayer"
  iso_file_system_type      = "udf"
}
