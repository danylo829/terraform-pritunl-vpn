variable "project_id" {
  type        = string
  description = "Your project id"
}

variable "region" {
  type        = string
  description = "Region where to deploy VPN"
}

variable "zone" {
  type        = string
  description = "Zone where to deploy VPN"
}

variable "credentials_path" {
  type = string
  description = "Path to service account file"
}

variable "ssh_user" {
  type        = string
  description = "Username for ssh key"
}

variable "ssh_pub_key_path" {
  type = string
  description = "Path to public ssh key"
}