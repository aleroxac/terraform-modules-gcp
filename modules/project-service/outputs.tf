output "project_service_ids" {
  description = "Map of Project Service IDs keyed by Project Service name."
  value       = { for k, v in google_project_service.this : k => v.id }
}
