# Nome do switch de rede
variable "network_switch_name" {
  description = "Nome do switch de rede"
  type        = string
  default     = "DMZ"
}

# Tipo do switch (Internal, External, Private)
variable "switch_type" {
  description = "Tipo do switch de rede"
  type        = string
  default     = "Internal"
}

# Permitir que o host use o switch
variable "allow_management_os" {
  description = "Permitir que o sistema operacional hospedeiro acesse o switch"
  type        = bool
  default     = true
}
