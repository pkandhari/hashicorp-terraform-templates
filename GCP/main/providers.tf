terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "google" {
  project                     = var.project_id
  region                      = var.region
  zone                        = var.zone
  impersonate_service_account = var.service_account
}