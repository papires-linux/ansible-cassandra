resource "google_compute_instance" "cassandra" {
  for_each = toset( var.instance_name )
   
  project      = var.project
  name         = each.key
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = var.network
  }
}

resource "google_compute_instance" "bastion" {
  project      = var.project
  name         = "bastion-host"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = var.network
    access_config { }
  }

  metadata = {
    ssh-keys = "${var.gce_ssh_key}"
  }

  metadata_startup_script = "sudo dnf install epel-release -y && sudo dnf install ansible git -y;"
}

output "ip_do_bastion-host" {
  value = "${google_compute_instance.bastion.network_interface.0.access_config.0.nat_ip}"
}
