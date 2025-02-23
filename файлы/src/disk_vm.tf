resource "yandex_compute_disk" "disk" {
  count    = 3
  name     = "disk-name-${count.index}"
  size     = var.disk_size
  type     = var.disk_type
  zone     = var.zone
  image_id = var.disk_image_id

  labels = var.labels
}

resource "yandex_compute_instance" "storage" {
name = "storage"
platform_id = var.platform_id
zone = var.zone
allow_stopping_for_update = "true"

   resources {
    cores         = var.resources["cpu"]
    memory        = var.resources["ram"]
    core_fraction = var.resources["core_fraction"]
  }

boot_disk {
initialize_params {
image_id = var.instance_image_id
}
}

  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.disk
    content {
      disk_id = secondary_disk.value.id
    }
}

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }


  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${local.ssh-keys}"
  }

}
