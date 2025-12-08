module "subnet" {
  source = "../../../modules/subnet"

  subnets = {
    example-subnet = {
      project = var.project_id
      region = var.region
      ip_cidr_range = var.ip_cidr_range
      vpc_name = var.vpc_name
    }
  }

  labels = local.labels
}
