variable "service" {
  type    = string
  default = "sample"
}
variable "state_env" {
  type    = string
  default = "state"
}
variable "state_region" {
  type    = string
  default = "us-west-2"
}

locals {
  region = var.state_region
  symbol = {
    service = var.service
    env     = var.state_env
    prefix  = "${var.service}-${var.state_env}"
  }
  envs = ["devel"]
}
