# Module: vpc

## Overview
This module manages VPCs on GCP.
It is part of the `terraform-modules-gcp` collection.

## Usage
``` hcl
module "vpc" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/vpc?ref=v1.0.0"

  vpcs = {
    vpc-demo = {
      project                 = "demo-project"
      auto_create_subnetworks = false
    }
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_network.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | Map of VPCs to create. Each key represents the VPC name, and the object defines its properties. When empty, no VPCs are created. | <pre>map(object({<br/>    project                 = string<br/>    auto_create_subnetworks = optional(bool, false)<br/>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_ids"></a> [vpc\_ids](#output\_vpc\_ids) | Map of VPC IDs keyed by VPC name. |
<!-- END_TF_DOCS -->

## Examples
See the [examples](../../examples/) folder for complete working examples.

## Notes
- This module uses the Google provider.
- Providers must be configured in the root module.

## Author
Created by [Augusto Cardoso](https://github.com/aleroxac)

## License
Licensed under MIT – see [LICENSE](../../LICENSE.md) for details.
