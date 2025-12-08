variable "routers" {
  description = "Map of Routers to create (leave empty to skip creation)"
  type = map(object({
    vpc_name = string
    region   = string
    project  = string
  }))
  default = {}
}

variable "labels" {
  description = "User-defined labels that will be mapped to labels/tags depending on resource capabilities."
  type        = map(string)
  default     = {}
}
