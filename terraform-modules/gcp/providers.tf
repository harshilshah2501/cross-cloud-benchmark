terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}
provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}