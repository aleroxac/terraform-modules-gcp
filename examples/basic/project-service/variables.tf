variable "project_id" {
  description = "GCP Project where the NAT will be created"
  type        = string
}

variable "disable_on_destroy" {
  description = "The service should be disabled on terraform-destroy"
  type        = bool
}
