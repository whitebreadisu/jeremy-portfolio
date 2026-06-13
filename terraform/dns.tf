resource "google_dns_managed_zone" "portfolio" {
  project     = var.project_id
  name        = "jeremybradenapps-com"
  dns_name    = "jeremybradenapps.com."
  description = "Root zone for jeremybradenapps.com - portal landing page and per-app subdomains"

  depends_on = [google_project_service.portal]
}
