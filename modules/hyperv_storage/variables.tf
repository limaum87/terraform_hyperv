# Caminho do VHD
variable "vhd_path" {
  description = "Caminho do VHD para a máquina virtual"
  type        = string
  default     = "C:\\VMs\\web_server_g2.vhdx"
}

# Tamanho do VHD em bytes
variable "vhd_size" {
  description = "Tamanho do VHD em bytes"
  type        = number
  default     = 1073741824000  # 1TB
}

# Caminho do ISO para instalação
variable "iso_path" {
  description = "Caminho do ISO para instalação"
  type        = string
  default     = "C:\\ISO\\windows.iso"
}

# Se deve criar um ISO ou não
variable "create_iso" {
  description = "Define se o Terraform deve criar um ISO novo"
  type        = bool
  default     = false
}

# Caminho do ISO de origem, caso queira criar um novo ISO
variable "source_iso_file_path" {
  description = "Caminho do ISO original, usado para criar um novo ISO"
  type        = string
  default     = "C:\\ISO\\base_windows.iso"
}
