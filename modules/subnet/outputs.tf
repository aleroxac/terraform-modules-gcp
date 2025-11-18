output "subnet_ids" {
  description = "Map of subnet IDs keyed by subnet name."
  value       = { for k, v in google_compute_subnetwork.this : k => v.id }
}
