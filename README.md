# Terraform Pritunl VPN

This repository contains Terraform code to deploy a [Pritunl VPN](https://pritunl.com/) server on Google Cloud Platform (GCP). Pritunl is an open-source VPN solution that provides a web-based management interface and supports various VPN protocols.

## Getting Started

To use this code, you will need a GCP account and Terraform installed on your local machine.

### Prerequisites

- A GCP account
- Terraform 0.12 or later
- A service account key with the necessary permissions to create GCP resources. You can create a service account key from the GCP Console.

### Installation

1. Clone the repository:
  ```
  git clone https://github.com/danylo829/terraform-pritunl-vpn
  ```

2. Change into the cloned directory:
  ```
  cd terraform-pritunl-vpn
  ```

3. Initialize the Terraform configuration:
  ```
  terraform init
  ```

4. Create a `terraform.tfvars` file and set the required variables:
  ```
  credentials_path = "<path-to-service-account-key>"
  project_id       = "<your-gcp-project-id>"
  region           = "<gcp-region>"
  zone             = "<gcp-zone>"
  ssh_pub_key_path = "<ssh-pub-key-path>"
  ssh_user         = "<ssh-user>"
  server_port      = "<server-port>"
  ```
5. Apply the Terraform configuration:
  ```
  terraform apply
  ```

## Configuration

The `variables.tf` file contains the list of variables used in this Terraform configuration:

- `credentials`: The path to your GCP service account key file.
- `project_id`: Your GCP project ID.
- `region`: The GCP region where the resources will be created.
- `zone`: The GCP zone where the resources will be created.
- `ssh_pub_key_path`: Path to public ssh key.
- `ssh_user`: Username for ssh key.
- `server_port`: Server port through which VPN clients will be connected.

You can set the values of these variables in the `terraform.tfvars` file.

## Usage

After the Terraform code is applied, the output will show the URL to access the Pritunl web interface, along with the username and password. You can use this URL to access the web interface and configure the VPN server.
