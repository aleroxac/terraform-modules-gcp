locals {
  # Original labels provided by the user
  base_labels = var.labels

  # GCP Resource Manager Tags: "tagKeys/<key>" = "tagValues/<val>"
  resource_manager_tags = {
    for k, v in var.labels :
    "tagKeys/${k}" => "tagValues/${v}"
  }

  # AWS-style tags
  aws_tags = [
    for k, v in var.labels :
    { key = k, value = v }
  ]
}
