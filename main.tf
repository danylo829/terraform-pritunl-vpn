provider "google" {
  credentials = file(var.credentials_path)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "vpc" {
  source = "./modules/network"
  server_port = var.server_port
}

module "instance" {
  source           = "./modules/instances"
  network_name     = module.vpc.network_name
  ssh_user         = var.ssh_user
  ssh_pub_key_path = var.ssh_pub_key_path
}
