output "router_ids" {
  description = "Map of Router IDs keyed by Router name."
  value       = { for k, v in google_compute_router.this : k => v.address }
}
