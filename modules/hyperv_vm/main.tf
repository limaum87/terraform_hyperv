resource "hyperv_machine_instance" "default" {
  name         = "WebServer"
  generation   = 1
  state        = "Running"
  static_memory = true
  memory_startup_bytes = 536870912
  processor_count = 1

  # Configuração do adaptador de rede
  network_adaptors {
    name        = "wan"
    switch_name = var.network_switch
  }

  # Configuração do disco rígido (VHD)
  hard_disk_drives {
    controller_type = "Scsi"
    controller_number = "0"
    controller_location = "0"
    path = var.vhd_path
  }

  # Configuração do DVD Drive com ISO
  dvd_drives {
    controller_number   = "0"
    controller_location = "1"
    path = var.iso_path
  }

  # Configuração de firmware
  vm_firmware {
    enable_secure_boot = "Off"
    preferred_network_boot_protocol = "IPv4"
    console_mode = "None"
    pause_after_boot_failure = "Off"

    boot_order {
      boot_type           = "HardDiskDrive"
      controller_number   = "0"
      controller_location = "0"
    }

    boot_order {
      boot_type            = "NetworkAdapter"
      network_adapter_name = "wan"
    }
  }
}
