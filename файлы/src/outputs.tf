output "ВМ1" {
  value = yandex_compute_instance.platform.*.network_interface.0.nat_ip_address
  description = "vm_platform external ip"
}


output "ВМ2" {
  value = yandex_compute_instance.platform2.*.network_interface.0.nat_ip_address
  description = "vm_db external ip"
}
