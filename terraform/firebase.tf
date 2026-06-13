# Enables Firebase on jeremy-portfolio-prod (Stage C). Prerequisite for
# Firebase Hosting; the Hosting site itself and its content are managed via
# the Firebase CLI (firebase.json + `firebase deploy`).
resource "google_firebase_project" "default" {
  provider = google-beta
  project  = var.project_id

  depends_on = [google_project_service.portal]
}
