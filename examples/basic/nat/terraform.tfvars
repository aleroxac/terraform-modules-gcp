project_id                         = "demo-project"
region                             = "us-east1"
router_name                        = "example-router"
nat_ip_allocate_option             = "MANUAL_ONLY"
source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
nat_ips = [
  "nat-ip-example1",
  "nat-ip-example2"
]
subnetworks = [
  {
    name                    = "subnet-example-a"
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  },
  {
    name                    = "subnet-example-b"
    source_ip_ranges_to_nat = ["PRIMARY_IP_RANGE"]
  }
]
