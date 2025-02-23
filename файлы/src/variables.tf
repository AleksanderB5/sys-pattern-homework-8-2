###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "resources" {
  type=map
  default= {
  cpu =2
  ram = 1
  core_fraction = 20
  }
}

variable "wm_resources" {
  type        = list(object({ vm_name=string, cpu=number, ram=number, disk=number, core_fraction=number}))
  default     = [
    {vm_name="main", 
     cpu=2, 
     ram=2, 
     disk=1
     core_fraction=5
  },
    {vm_name="replica", 
     cpu=2, 
     ram=2, 
     disk=1
     core_fraction=5
  },

]
}

variable "image_id" {
  type=string
  default= "fd8ee3up0b7d31hq8t7d"
}

variable "scheduling_policy" {
  type=bool
  default= true
}

variable "platform_id" {
  type=string
  default= "standard-v3"
}

variable "zone" {
  type=string
  default= "ru-central1-a"
}


variable "fqdn" {
  description = "fqdn"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  default     = "yandex_vpc_subnet.develop.id"
}

variable "disk_image_id" {
  description = "Image ID"
  default     = "fd8nru7hnggqhs9mkqps"
}

variable "labels" {
  description = "Labels for resources"
  type        = map(string)
  default     = { environment = "test" }
}

variable "instance_image_id" {
  description = "Image ID for the instance"
  default     = "fd8g64rcu9fq5kpfqls0"
}

variable "disk_size" {
  description = "Size of the disk in GB"
  default     = 16
}

variable "disk_type" {
  description = "Type of the disk"
  default     = "network-ssd"
}
