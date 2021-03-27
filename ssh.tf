data "digitalocean_ssh_key" "default" {
  count = length(var.droplet_ssh_key_names)
  name = var.droplet_ssh_key_names[count.index]
}