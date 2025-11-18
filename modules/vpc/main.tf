resource "google_compute_network" "this" {
  for_each = var.vpcs

  name                    = each.key
  project                 = each.value.project
  auto_create_subnetworks = each.value.auto_create_subnetworks

  params {
    resource_manager_tags = local.resource_manager_tags
  }
}
