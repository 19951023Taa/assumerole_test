/* Common */
variable "ENV" {
  description = "Environment Code ex)PD/ST"
  type        = string
  default     = ""
}

variable "region" {}
variable "role_arn" {}

/* VPC */
variable "vpc_cidr" {}



