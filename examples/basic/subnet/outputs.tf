output "subnet_ids" {
  description = "Map of subnet IDs keyed by subnet name."
  value       = module.subnet.subnet_ids
}
