resource "digitalocean_certificate" "cert" {
  name    = var.droplet_certificate_name
  type    = "lets_encrypt"
  domains = var.droplet_certificate_domain
}