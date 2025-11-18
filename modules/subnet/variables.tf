variable "subnets" {
  description = <<EOT
Map of subnets to create. Each subnet can be:
- public or private (for tagging, routing, or naming)
- optionally contain one or more secondary IP ranges
EOT

  type = map(object({
    vpc_name        = string
    region          = string
    ip_cidr_range   = string
    subnet_type     = string
    enable_nat      = optional(bool, false)
    nat_name_prefix = optional(string, null)
    nat_ip_count    = optional(number, 1)
    secondary_ip_ranges = optional(list(object({
      range_name    = string
      ip_cidr_range = string
    })), [])
  }))
  default = {}
}

variable "labels" {
  description = "User-defined labels that will be mapped to labels/tags depending on resource capabilities."
  type        = map(string)
  default     = {}
}
