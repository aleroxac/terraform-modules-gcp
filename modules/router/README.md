# Module: router

## Overview
This module manages routers on GCP.
It is part of the `terraform-modules-gcp` collection.

## Usage
``` hcl
module "subnet" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/router?ref=v1.0.0"

  routers = {
    router-demo = {
      region = "us-east1"
      vpc_name = "vpc-demo"
      project = "aleroxac"
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
