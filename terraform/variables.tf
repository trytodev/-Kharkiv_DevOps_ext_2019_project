variable "project" {
  type = string
  default = "hardy-pattern-305121"
  description = "hardy-pattern-305121"
}

variable "region" {
  type = string
  default = "us-central1"
  description = "Region"
}

variable "zone" {
  type = string
  default = "us-central1-a"
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
  default     = "1"
}
