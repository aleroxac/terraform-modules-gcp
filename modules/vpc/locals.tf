locals {

  # Labels EXATAMENTE como o user forneceu
  base_labels = var.labels

  # GCP Resource Manager Tags:
  # precisam ser transformadas em:
  # "tagKeys/<key>" = "tagValues/<val>"
  resource_manager_tags = {
    for k, v in var.labels :
    "tagKeys/${k}" => "tagValues/${v}"
  }

  # AWS-style tags (se você quiser multi-cloud):
  aws_tags = [
    for k, v in var.labels :
    { key = k, value = v }
  ]

}
