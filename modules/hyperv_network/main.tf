resource "hyperv_network_switch" "dmz_network_switch" {
  name                  = var.network_switch_name
  switch_type           = var.switch_type
  allow_management_os   = var.allow_management_os
  enable_embedded_teaming = false
  enable_iov            = false
  enable_packet_direct  = false
}
