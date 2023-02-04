output "instance_ips" {
  value       = google_compute_instance.Instance.*.network_interface.0.access_config.0.nat_ip
  description = "The public IP address of pritunl instance"
}