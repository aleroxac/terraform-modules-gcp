output "project_service_ids" {
  description = "Map of Project Service IDs keyed by Project Service name."
  value       = module.service.project_service_ids
}
