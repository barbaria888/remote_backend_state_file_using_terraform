provider "google" {
  project     = "qwiklabs-gcp-02-09f042b3bf7a"
  region      = "us-central1"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-02-09f042b3bf7a"
  location    = "US"
  uniform_bucket_level_access = true
}
terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}