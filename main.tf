provider "google" {
  project     = "playground-s-11-588ca877"
  region      = "us-central1"
}

resource "google_storage_bucket" "auto-expire" {
  name          = var.storage_name
  location      = "US-CENTRAL1"
  force_destroy = true
}