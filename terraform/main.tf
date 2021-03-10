provider "google" {
  credentials = "/home/koin/credentials/main.json"
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance-" {
  count        = var.count-vm
  name         = "terraform-instance-${count.index + 1}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = var.disk_image
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config {
    }
  }

  provisioner "file" {
    source      = "~/Kharkiv_DevOps_ext_2019_project/start.sh"
    destination = "~/script.sh"
 
    connection {
        type = "ssh"
	user = "koin"
	private_key = (file("~/.ssh/main_koin"))
	host = "terraform-instance-${count.index + 1}"
   }
 }

  provisioner "remote-exec" {
    inline = [
	"sudo chmod +x ~/script.sh",
	"sudo sh ~/script.sh"
]
      connection {
        type = "ssh"
        user = "koin"
        private_key = (file("~/.ssh/main_koin")) 
	host = "terraform-instance-${count.index + 1}"
 }
}
}
