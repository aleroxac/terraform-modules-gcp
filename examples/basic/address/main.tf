module "ip" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/address?ref=v1.0.0"

  ips = {
    ip-demo = {
      project = var.project
      region = var.region
    }
  }

  labels = local.labels
}