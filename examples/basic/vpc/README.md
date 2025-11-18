# VPC – Basic Example

This example demonstrates how to use the `vpc` module to create a single VPC on Google Cloud with the minimum required configuration. It is intended for validating the module in isolation, understanding its basic interface, and running CI/CD validation.

## Prerequisites
* Terraform v1.13.5+
* Google Provider v7.5.0+
* An existing Google Cloud project
* Required API enabled: `compute.googleapis.com`

## How to Run
```sh
## Initialize
terraform init

## Plan
terraform plan -var="project_id=my-gcp-project"

## Apply
terraform apply -var="project_id=my-gcp-project"

## Destroy
terraform destroy -var="project_id=my-gcp-project"
```

## Notes
* Labels provided to the module are automatically converted into `resource_manager_tags` when the target resource supports them.
* This example creates only the VPC; subnets, NAT, routers, and other networking components must be created using their respective modules.
* Use this example as a foundation for more advanced or combined scenarios.
