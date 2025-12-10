variable "project_id" {
  description = "GCP Project where the NAT will be created"
  type        = string
}

variable "region" {
  description = "GCP region where the NAT will be created"
  type        = string
}

variable "router_name" {
  description = "The Router name where the NAT will be allocated"
  type        = string
}

variable "subnet_name" {
  description = "The Subnet name where the NAT will be allocated"
  type        = string
}

variable "nat_ips" {
  description = "The list of Subnet names"
  type        = set(string)
}

variable "nat_ip_allocate_option" {
  description = "How to allocate NAT IPs (AUTO_ONLY or MANUAL_ONLY)"
  type        = string
}

variable "source_subnetwork_ip_ranges_to_nat" {
  description = "Which subnetwork IP ranges to include in NAT"
  type        = string
}

variable "nat_ips" {
  description = "Optional list of existing NAT IP addresses to use"
  type        = optional(list(string), null)
}

variable "subnetworks" {
  description = "Optional subnetworks with specific IP ranges to NAT"
  type = optional(list(object({
    name                    = string
    source_ip_ranges_to_nat = list(string)
  })), null)
}
