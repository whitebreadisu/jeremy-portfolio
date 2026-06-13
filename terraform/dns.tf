resource "google_dns_managed_zone" "portfolio" {
  project     = var.project_id
  name        = "jeremybradenapps-com"
  dns_name    = "jeremybradenapps.com."
  description = "Root zone for jeremybradenapps.com - portal landing page and per-app subdomains"

  depends_on = [google_project_service.portal]
}

# Records Firebase Hosting requires for the jeremybradenapps.com custom
# domain (Stage D) - sourced from
# google_firebase_hosting_custom_domain.portfolio_root.required_dns_updates.
resource "google_dns_record_set" "portfolio_root_a" {
  project      = var.project_id
  managed_zone = google_dns_managed_zone.portfolio.name
  name         = google_dns_managed_zone.portfolio.dns_name
  type         = "A"
  ttl          = 3600

  rrdatas = ["199.36.158.100"]
}

resource "google_dns_record_set" "portfolio_root_verification_txt" {
  project      = var.project_id
  managed_zone = google_dns_managed_zone.portfolio.name
  name         = google_dns_managed_zone.portfolio.dns_name
  type         = "TXT"
  ttl          = 3600

  rrdatas = ["\"hosting-site=jeremy-portfolio-prod\""]
}
