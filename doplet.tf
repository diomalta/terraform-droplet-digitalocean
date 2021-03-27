resource "digitalocean_droplet" "web" {
  image              = var.droplet_image
  name               = var.droplet_name
  region             = var.droplet_region
  size               = var.droplet_size
  ssh_keys           = [data.digitalocean_ssh_key.diomalta.id]
  private_networking = var.droplet_private_networking


  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      ssh_keys,
    ]
  }

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt-get update",
      "sudo apt-get -y install nginx"
    ]
  }
}