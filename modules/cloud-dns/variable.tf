variable "project_id" {
  description = "Google project ID where DNS will be placed on"
}

variable "dns_zone_name" {
  description = "DNS zone name identifier, eg."
}

variable "dns_identifier" {
  description = "DNS name identifier"
}

variable "type" {
  description = "The DNS record set type"
}

variable "ttl" {
  description = "The time-to-live of this record set (seconds)"
  default     = 300
}

variable "rrdatas" {
  description = "The string data for the records in this record set whose meaning depends on the DNS type"
  type        = list(any)
  default     = []
}

variable "count_compute" {
  default = ""
}

variable "count_start" {
  default = ""
}

variable "count_list" {
  type    = list(any)
  default = ["1", "2", "3"]
}
