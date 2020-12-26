terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.3.0"
    }
  }
}

variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# Create a web server
resource "digitalocean_droplet" "droplet-test" {
  image  = "ubuntu-18-04-x64"
  name   = "terraform-droplet-test"
  region = "ams3"
  size   = "s-1vcpu-1gb"
}
