# Module: subnet

## Overview
This module manages NATs on GCP.
It is part of the `terraform-modules-gcp` collection.

## Usage
``` hcl
module "nat" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/nat?ref=v1.0.0"

  nats = {
    nat-demo = {
      project     = "aleroxac"
      router_name = "router-demo"
      region      = "us-east1"

      nat_ip_allocate_option             = "MANUAL_ONLY"
      source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

      nat_ips = [
        "nat-ip-demo1",
        "nat-ip-demo2"
      ]

      subnetworks = [
        {
          name                    = "subnet-demo-a"
          source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
        },
        {
          name                    = "subnet-demo-b"
          source_ip_ranges_to_nat = ["PRIMARY_IP_RANGE"]
        }
      ]
    }
  }
}
```

<!-- BEGIN_TF_DOCS -->
{{ .Header }}
{{ .Providers }}
{{ .Requirements }}
{{ .Resources }}
{{ .Inputs }}
{{ .Outputs }}
{{ .Footer }}
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
