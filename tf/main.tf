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
    access_config { }
  }

  metadata = {
    ssh-keys = var.gce_ssh_key
  }


}

output "ip_do_bastion-host" {
  value = tomap({
    for key, pool in google_compute_instance.cassandra : key => pool.network_interface.0.access_config.0.nat_ip
  })
}
