variable "vpcs" {
  description = "Map of VPCs to create (leave empty to skip creation)"
  type = map(object({
    project                 = string
    auto_create_subnetworks = optional(bool, false)
  }))

  default = {}

  validation {
    condition = alltrue([
      for name, cfg in var.vpcs :
      cfg.project != null && cfg.project != ""
    ])
    error_message = "Each VPC must define a non-empty 'project'."
  }
}

variable "labels" {
  description = "User-defined labels that will be mapped to labels/tags depending on resource capabilities."
  type        = map(string)
  default     = {}
}
