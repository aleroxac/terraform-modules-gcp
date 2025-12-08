variable "project_id" {
  description = "GCP Project where the router will be created"
  type        = string
}

variable "region" {
  description = "GCP region where the router will be created"
  type        = string
}

variable "vpc_name" {
  description = "The VPC name where the router will be allocated"
  type        = string
}
