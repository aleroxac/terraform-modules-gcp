output "vpc_ids" {
  description = "Map of VPC IDs keyed by VPC name."
  value       = module.vpc.vpc_ids
}
