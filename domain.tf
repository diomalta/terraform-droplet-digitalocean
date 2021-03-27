resource "digitalocean_domain" "default" {
  name       = var.droplet_domain_name
  ip_address = digitalocean_droplet.web.ipv4_address
}