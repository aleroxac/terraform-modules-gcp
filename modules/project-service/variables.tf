variable "services" {
  description = "Map of Project Services to enable (leave empty to skip creation)"
  type = map(object({
    project            = string
    disable_on_destroy = bool
  }))
  default = {}
}

variable "labels" {
  description = "User-defined labels that will be mapped to labels/tags depending on resource capabilities."
  type        = map(string)
  default     = {}
}
