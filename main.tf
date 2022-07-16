provider "google" {
project = "demowithgcp"
region = "us-central1"
}

resource "google_compute_instance" "myvm" {
name = "myvm-dev"
zone = "us-central1-c"
boot_disk {
initialize_params {
  image = "debian-cloud/debian-9"
  size = "10"
}
}
machine_type = "f1-micro" 
network_interface {
network = "default"
}
}
