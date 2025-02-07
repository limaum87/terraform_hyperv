# Usuário do Hyper-V
variable "hyperv_user" {
  description = "Usuário do Hyper-V"
  type        = string
  default     = "administrador"
}

# Senha do Hyper-V (não definir um default por segurança)
variable "hyperv_password" {
  description = "Senha do Hyper-V"
  type        = string
  sensitive   = true
}

# IP ou Hostname do Hyper-V
variable "hyperv_host" {
  description = "IP ou hostname do servidor Hyper-V"
  type        = string
  default     = "acc-hyper-02"
}

# Nome do switch de rede
variable "network_switch" {
  description = "Nome do switch de rede usado pela VM"
  type        = string
  default     = "DMZ"
}

# Caminho do VHD da VM
variable "vhd_path" {
  description = "Caminho do VHD da máquina virtual"
  type        = string
  default     = "C:\\VMs\\web_server_g2.vhdx"
}

# Caminho do ISO
variable "iso_path" {
  description = "Caminho do ISO para instalação"
  type        = string
  default     = "C:\\ISO\\windows.iso"
}
