terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.17.0"
    }
  }
}

provider "google" {
    project = "qwiklabs-gcp-00-39895d52dfdc"
  # Configuration options
}



resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "e2-small"
  zone         = "us-central1-a"
  allow_stopping_for_update = true

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2404-noble-amd64-v20250725"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }


}

