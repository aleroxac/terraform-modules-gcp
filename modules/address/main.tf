resource "google_compute_address" "this" {
  for_each = var.ips

  name    = each.key
  project = each.value.project
  region  = each.value.region
  labels  = var.labels
}
