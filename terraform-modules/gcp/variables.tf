variable "credentials_file" {
  description = "Path to the GCP credentials file"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"  # Adjust as needed
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-a"
}