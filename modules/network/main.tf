resource "google_compute_network" "vpc_network" {
  name                    = "vpc"
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "general_rule" {
  name        = "general-rule"
  network     = google_compute_network.vpc_network.name
  description = "Allow ssh, icmp and user connection ports"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
  allow {
    protocol = "udp"
    ports    = [var.server_port]
  }

  target_tags   = ["pritunl-server"]
  source_ranges = ["0.0.0.0/0"]
}
