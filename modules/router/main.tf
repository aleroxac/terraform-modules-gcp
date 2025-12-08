resource "google_compute_router" "this" {
  for_each = var.routers

  name    = each.key
  region  = each.value.region
  network = each.value.vpc_name
  project = each.value.project

  params {
    resource_manager_tags = local.resource_manager_tags
  }
}
