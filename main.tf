provider "google" {
  project     = "my-gcp-project-452807"  # Replace with your actual GCP Project ID
  region      = "us-central1"
}

resource "google_compute_instance" "my_vm" {
  name         = "my-gcp-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
