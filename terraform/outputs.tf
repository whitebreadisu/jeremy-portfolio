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

output "custom_domain_required_dns_updates" {
  description = "DNS records Firebase needs for the jeremybradenapps.com custom domain (TXT verification, A/AAAA hosting). Add these to dns.tf."
  value       = google_firebase_hosting_custom_domain.portfolio_root.required_dns_updates
}

output "custom_domain_state" {
  description = "Ownership and hosting state of the jeremybradenapps.com custom domain"
  value = {
    ownership_state = google_firebase_hosting_custom_domain.portfolio_root.ownership_state
    host_state      = google_firebase_hosting_custom_domain.portfolio_root.host_state
  }
}
