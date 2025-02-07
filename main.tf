terraform {
  required_providers {
    hyperv = {
      source  = "taliesins/hyperv"
      version = "1.2.1"
    }
  }
}

terraform {
  required_providers {
    hyperv = {
      source  = "taliesins/hyperv"
      version = "1.2.1"
    }
  }
}

provider "hyperv" {
  user        = var.hyperv_user
  password    = var.hyperv_password
  host        = var.hyperv_host
  port        = 5986
  https       = true
  insecure    = true  # Ignora verificação de certificado SSL
  use_ntlm    = true
  timeout     = "30s"
  script_path = "C:/Temp/terraform_%RAND%.cmd"
}

# Chama o módulo de rede (Hyper-V Network)
module "hyperv_network" {
  source = "./modules/hyperv_network"
}

# Chama o módulo de armazenamento (VHD e ISO)
module "hyperv_storage" {
  source = "./modules/hyperv_storage"
}

# Chama o módulo de criação da VM
module "hyperv_vm" {
  source         = "./modules/hyperv_vm"
  network_switch = module.hyperv_network.switch_name
  vhd_path       = module.hyperv_storage.vhd_path
  iso_path       = module.hyperv_storage.iso_path
}
