module "vpc" {
  source = "../../../modules/vpc"

  vpcs = {
    example-vpc = {
      project                 = var.project_id
      auto_create_subnetworks = false
    }
  }

  labels = local.labels
}
