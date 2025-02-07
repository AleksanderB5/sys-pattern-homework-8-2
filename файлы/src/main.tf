resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}



data "yandex_compute_image" "ubuntu-2004-lts" {
    family = var.vm_web_family
}
resource "yandex_compute_instance" "platform" {
  name = local.web
  zone = var.default_zone
  platform_id = var.vm_web_platform
  resources {
    cores          = var.vms_resources.vm_web_resources.cores
    memory         = var.vms_resources.vm_web_resources.memory
    core_fraction  = var.vms_resources.vm_web_resources.core_fraction
 }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = var.common_metadata

}


#VM2


resource "yandex_vpc_subnet" "dev2" {
  name           = var.vpc_name2
  zone           = var.default_zone2
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr2
}



data "yandex_compute_image" "ubuntu-2004-lts2" {
    family = var.vm_db_family
}
resource "yandex_compute_instance" "platform2" {
  name = local.db
  zone = var.default_zone2
  platform_id = var.vm_db_platform
  resources { 
    cores          = var.vms_resources.vm_db_resources.cores
    memory         = var.vms_resources.vm_db_resources.memory  
    core_fraction  = var.vms_resources.vm_db_resources.core_fraction
 }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.dev2.id
    nat       = true
  }

  metadata = var.common_metadata

}
