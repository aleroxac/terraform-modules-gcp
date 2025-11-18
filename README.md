# terraform-modules-gcp
Project with terraform modules to provision GCP infrastructure resources.



## Modules Available
- networking
    - [vpc](modules/networking/vpc)
    - [subnet](modules/networking/subnet)
    - [nat](modules/networking/nat)
- apis
    - [project-service](modules/apis/project-service)
- gke
    - [cluster](modules/gke/cluster)
    - [nodepool](modules/gke/nodepool)



## Requirements
- Create a [GCP account](https://docs.cloud.google.com/docs/get-started)
- Make sure that your [GCP IAM user](https://console.cloud.google.com/iam-admin) that you will use to handle resources with these modules have all the required permissions.

> [!TIP]
> Check the README.md file inside each module folder to learn about fields, required permissions, and more.



## Setup
- [Workspace setup](docs/SETUP.md)



## How to import these modules
``` hcl
terraform {
  required_version = ">= 1.13.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.5.0"
    }
  }

  backend "gcs" {
    bucket = "demo-aleroxac"
    prefix = "envs"
  }
}

provider "google" {
  project = "aleroxac"
  region  = "us-east1"
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

module "vpc" {
  source = "github.com/aleroxac/terraform-modules-gcp//modules/vpc?ref=v1.0.0"

  vpcs = {
    "demo-vpc" = {
      project = var.project_id
      auto_create_subnetworks = false
    }
  }

  labels = {
    environment = "dev"
    project     = "demo"
    team        = "devops"
    owner       = "augusto"
    provider    = "gcp"
    managed_by  = "terraform" 
  }
}
```
