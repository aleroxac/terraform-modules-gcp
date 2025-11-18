output "ip_address_ids" {
  description = "Map of IP addresses IDs keyed by IP addresses name."
  value       = { for k, v in google_compute_network.this : k => v.address }
}
