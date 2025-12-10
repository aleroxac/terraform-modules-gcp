resource "google_compute_router_nat" "this" {
  for_each = var.nats

  name                               = each.key
  project                            = each.value.project
  router                             = each.value.router_name
  region                             = each.value.region
  nat_ip_allocate_option             = each.value.nat_ip_allocate_option
  source_subnetwork_ip_ranges_to_nat = each.value.source_subnetwork_ip_ranges_to_nat

  nat_ips = each.value.nat_ip_allocate_option == "MANUAL_ONLY" ? each.value.nat_ips : null

  dynamic "subnetwork" {
    for_each = each.value.source_subnetwork_ip_ranges_to_nat == "LIST_OF_SUBNETWORKS" ? each.value.subnetworks : []

    content {
      name                    = subnetwork.value.name
      source_ip_ranges_to_nat = subnetwork.value.source_ip_ranges_to_nat
    }
  }
}
