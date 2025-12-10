variable "nats" {
  description = "Map of NATs to create (leave empty to skip creation)"
  type = map(object({
    project     = string
    router_name = string
    region      = string

    nat_ip_allocate_option             = string
    source_subnetwork_ip_ranges_to_nat = string

    nat_ips = optional(list(string), null)

    subnetworks = optional(list(object({
      name                    = string
      source_ip_ranges_to_nat = list(string)
    })), null)
  }))
  default = {}
}

variable "labels" {
  description = "User-defined labels that will be mapped to labels/tags depending on resource capabilities."
  type        = map(string)
  default     = {}
}
