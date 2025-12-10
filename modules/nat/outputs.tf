output "nat_ids" {
  description = "Map of NAT IDs keyed by NAT name."
  value       = { for k, v in google_compute_router_nat.this : k => v.address }
}
