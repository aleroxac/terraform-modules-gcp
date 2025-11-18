variable "ips" {
  type = map(object({
    project = string
    region = string
  }))
  description = "Map of IP addresses to create (leave empty to skip creation)"
  default = {}
}

variable "labels" {
  description = "User-defined labels that will be mapped to labels/tags depending on resource capabilities."
  type        = map(string)
  default     = {}
}
