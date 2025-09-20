# instances

resource "yandex_compute_instance" "cp" {
  name = "cp"
  zone = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd83clk0nfo8p172omkn"
      size = 20
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.subnet-a.id
    nat        = true
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}

resource "yandex_compute_instance" "node1" {
  name = "node1"
  zone = "ru-central1-b"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd83clk0nfo8p172omkn"
      size = 15
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.subnet-b.id
    nat        = true
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}


resource "yandex_compute_instance" "node2" {
  name = "node2"
  zone = "ru-central1-d"
  platform_id = "standard-v2"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd83clk0nfo8p172omkn"
      size = 15
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.subnet-d.id
    nat        = true
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}

# IAM: сервисный аккаунт и права
resource "yandex_iam_service_account" "diplom_sa" {
  name        = "diplom-sa"
  description = "Service account for diploma project"
}

resource "yandex_resourcemanager_folder_iam_member" "sa_editor" {
  folder_id = var.folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.diplom_sa.id}"
}

# Static access key for the service account
resource "yandex_iam_service_account_static_access_key" "sa_static_key" {
  service_account_id = yandex_iam_service_account.diplom_sa.id
  description        = "Static access key for diploma"
}
