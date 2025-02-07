terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.5"
}

provider "yandex" {
  # token     = var.token
  cloud_id                 = "b1gtad7flabggbsbotg9"
  folder_id                = "b1ggulh78qigp1u640bn"
  service_account_key_file = file("~/.authorized_key.json")
}
