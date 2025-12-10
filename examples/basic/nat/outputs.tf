output "nat_ids" {
  description = "Map of NAT IDs keyed by NAT name."
  value       = module.nat.nat_ids
}
