provider "google" {
  project     = "playground-s-11-6b09b6ba"
  region      = "us-central1"
}

resource "google_storage_bucket" "auto-expire" {
  name          = var.storage_name
  location      = "US-CENTRAL1"
  force_destroy = true
}
