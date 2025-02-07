# Nome do switch de rede
variable "network_switch" {
  description = "Nome do switch de rede usado pela VM"
  type        = string
}

# Caminho do VHD da VM
variable "vhd_path" {
  description = "Caminho do VHD da máquina virtual"
  type        = string
}

# Caminho do ISO
variable "iso_path" {
  description = "Caminho do ISO para instalação"
  type        = string
}
