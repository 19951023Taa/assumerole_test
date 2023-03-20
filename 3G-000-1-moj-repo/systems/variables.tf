/* Common */
variable "ENV" {
  description = "Environment Code ex)PD/ST/DV"
  type        = string
  default     = ""
}

variable "region" {}
variable "role_arn" {}

/* VPC */
variable "vpc_cidr" {}
variable "subnet_cidrs" {}
variable "vpc_id" {}
variable "igw_id" {}



