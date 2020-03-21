variable "project" {
  description = "fifth-battery-268810"
}

variable "region" {
  description = "Region"
}

variable "zone" {
  description = "Zone"
}

#variable "credentials" {
#  description = "JSON credentials"
#  default     = "/home/benox133/secure/cred.json"
#}

variable "disk_image" {
  description = "CentOS 8"
  default     = "centos-cloud/centos-8"
}

variable "count-vm" {
  default     = "3"
}