### OwnCloud
resource "digitalocean_droplet" "mycloud" {
  name       = "mycloud.sevendials.org"
  size       = "512mb"
  region     = "nyc1"
  image      = "centos-7-0-x64"
  ssh_keys   = ["184164"]
  user_data  = "${file("cloud-init/install_puppet.conf")}"
}

output "address" {
  value = "${digitalocean_droplet.mycloud.ipv4_address}"
}

