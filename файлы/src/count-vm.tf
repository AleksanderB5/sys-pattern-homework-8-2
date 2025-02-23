resource "yandex_compute_instance" "count" {
  depends_on = [yandex_compute_instance.for_each]
  count = 2
  name        = "web-${count.index+1}"
  platform_id = "standard-v1"
  resources {
    cores         = var.resources["cpu"]
    memory        = var.resources["ram"]
    core_fraction = var.resources["core_fraction"]
  }
  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }
  scheduling_policy {
    preemptible = var.scheduling_policy
  }
  
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
    security_group_ids = [ 
      yandex_vpc_security_group.example.id
    ]
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${local.ssh-keys}"
  }

}
