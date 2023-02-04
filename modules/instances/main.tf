resource "google_compute_instance" "Instance" {
  name                    = "pritunl-server"
  machine_type            = "e2-micro"
  can_ip_forward          = true
  metadata_startup_script = file("./startup_script.sh")

  tags = ["pritunl-server", "http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20230104"
    }
  }

  network_interface {
    network = var.network_name
    access_config {}
  }

  metadata = {
    ssh-keys = format("%s%s%s", var.ssh_user, ":", file(var.ssh_pub_key_path))
  }
}
