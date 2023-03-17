module "default-dns" {
  count          = module.default.count_compute
  source         = "../modules/cloud-dns/"
  dns_identifier = format("database-%d", count.index + module.default.count_start)
  dns_zone_name  = "{ZONE_NAME}"
  project_id     = "{PROJECT_NAME}"
  type           = "A"
  ttl            = "300"
  rrdatas        = [module.default.network_ip[count.index]]
}