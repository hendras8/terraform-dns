
data "google_dns_managed_zone" "dns_zone" {
  name    = var.dns_zone_name
  project = var.project_id
}

resource "google_dns_record_set" "dns" {
  project      = var.project_id
  name         = "${var.dns_identifier}.${data.google_dns_managed_zone.dns_zone.dns_name}"
  managed_zone = data.google_dns_managed_zone.dns_zone.name
  type         = var.type
  ttl          = var.ttl
  rrdatas      = var.rrdatas
  lifecycle {
    ignore_changes = [
      rrdatas,
    ]
  }
}
