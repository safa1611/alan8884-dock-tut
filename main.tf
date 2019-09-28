provider "google" {
  project = "hidden-expanse-252201"
  region  = "us-central1"
  zone    = "us-central1-a"
}
resource "google_compute_instance" "dock-tut" {
  name         = "dock-tut"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-9-stretch-v20190905"
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}