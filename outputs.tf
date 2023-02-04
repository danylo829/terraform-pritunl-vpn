output "instance_ip" {
  value       = module.instance.instance_ips
  description = "The public IP address of pritunl instance"
}
