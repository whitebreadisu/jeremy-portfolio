terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Firebase resources live in google-beta. user_project_override avoids the
# ADC default-quota-project mismatch (same pattern as SWU's P2 stage 4).
provider "google-beta" {
  project               = var.project_id
  region                = var.region
  user_project_override = true
}
