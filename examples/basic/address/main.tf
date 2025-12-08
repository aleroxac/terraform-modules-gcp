module "ip" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/address?ref=v1.0.0"

  ips = {
    example-ip = {
      project = var.project
      region = var.region
    }
  }

  labels = local.labels
}