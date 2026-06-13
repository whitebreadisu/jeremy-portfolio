output "project_id" {
  value = var.project_id
}

output "enabled_apis" {
  value = concat(
    [for s in google_project_service.baseline : s.service],
    [for s in google_project_service.portal : s.service],
  )
}

output "dns_name_servers" {
  description = "Set these as Custom DNS nameservers for jeremybradenapps.com at the registrar (Namecheap)"
  value       = google_dns_managed_zone.portfolio.name_servers
}
