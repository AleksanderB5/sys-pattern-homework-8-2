###cloud vars

variable "default_cidr2" {
  type        = list(string)
  default     = ["10.2.0.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}


variable "default_zone2" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vpc_name2" {
  type        = string
  default     = "dev2"
  description = "VPC network & subnet name"
}

variable "vm_db_family" {
  type = string
  default = "ubuntu-2004-lts"
  description = "name_of_instance"
}

variable "vm_db_platform" {
  type = string
  default = "standard-v2"
  description = "type_of_standard"
}

variable "vms_resources" {
  description = "Resources for all vms"
  type = map(map(number))
  default = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "common_metadata" {
  description = "metadata for all vms"
  type = map(string)
  default = {
  serial-port-enable = "1"
  ssh-keys = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILrqHsMKEw6w6oOuTpkyIt5zxPSNLxbkG/6IPHRqh11x aleks@BIG"
  }
}


###ssh vars
