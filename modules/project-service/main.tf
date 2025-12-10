resource "google_project_service" "this" {
  for_each           = var.services

  service            = each.key
  project            = each.value.project
  disable_on_destroy = each.value.disable_on_destroy
}
