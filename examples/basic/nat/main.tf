module "nat" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/nat?ref=v1.0.0"

  nats = {
    example-nat = {
      project                            = var.project_id
      router_name                        = var.router_name
      region                             = var.region
      nat_ip_allocate_option             = var.nat_ip_allocate_option
      source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
      nat_ips                            = var.nat_ips
      subnetworks                        = var.subnetworks
    }
  }

  labels = local.labels
}
