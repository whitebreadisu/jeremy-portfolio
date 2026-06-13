locals {
  baseline_apis = [
    "storage.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
  ]
}

resource "google_project_service" "baseline" {
  for_each = toset(local.baseline_apis)

  project = var.project_id
  service = each.value

  disable_on_destroy = false
}

locals {
  # Cloud DNS (Stage B) and Firebase Hosting (Stage C/D) for the portal.
  portal_apis = [
    "dns.googleapis.com",
    "firebase.googleapis.com",
    "firebasehosting.googleapis.com",
  ]
}

resource "google_project_service" "portal" {
  for_each = toset(local.portal_apis)

  project = var.project_id
  service = each.value

  disable_on_destroy = false
}
