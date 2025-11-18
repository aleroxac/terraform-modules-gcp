output "vpc_ids" {
  description = "Map of VPC IDs keyed by VPC name."
  value       = { for k, v in google_compute_network.this : k => v.id }
}
