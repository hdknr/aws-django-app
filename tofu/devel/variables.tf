variable "service" {
  type    = string
  default = "sample"
}
variable "state_region" {
  type    = string
  default = "us-west-2"
}
variable "env" {
  type    = string
  default = "devel"
}
variable "region" {
  type    = string
  default = "us-west-2"

}

variable "domain_name" {
  type = string
}

locals {
  region = var.region
  symbol = {
    service = var.service
    env     = var.env
    prefix  = "${var.service}-${var.env}"
  }
}
