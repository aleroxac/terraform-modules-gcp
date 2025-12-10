module "service" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/project-service?ref=v1.0.0"

  services = {
    example-service = {
      project            = var.project_id
      disable_on_destroy = var.disable_on_destroy
    }
  }

  labels = local.labels
}
