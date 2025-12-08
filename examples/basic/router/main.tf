module "router" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/router?ref=v1.0.0"

  routers = {
    example-router = {
      region = var.region
      vpc_name = var.vpc_name
    }
  }

  labels = local.labels
}