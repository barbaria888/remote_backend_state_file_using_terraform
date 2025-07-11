    provider "google" {
  project     = "qwiklabs-gcp-02-09f042b3bf7a"
  region      = "us-central1"
}
//creating the bucket to store

resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-02-09f042b3bf7a"
  location    = "US" # Replace with EU for Europe region
  uniform_bucket_level_access = true
  force_destroy=true 
  //else it wont get deleted by terraform, will show error
}

terraform {
  backend "local" {//google cloud storage bucket to store the state file 
    
    prefix  = "terraform/state.terraform_state.tfstate"
  }
}