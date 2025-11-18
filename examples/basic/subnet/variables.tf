variable "project_id" {
  description = "GCP Project where the subnet will be created"
  type        = string
}

variable "region" {
  description = "GCP region where the subnet will be created"
  type        = string
}

variable "ip_cidr_range" {
  description = "The CIDR range to be used by the subnet"
  type        = string
}

variable "vpc_name" {
  description = "The VPC name where the subnet will be allocated"
  type        = string
}
