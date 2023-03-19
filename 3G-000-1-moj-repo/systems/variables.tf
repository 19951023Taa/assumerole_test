/* Common */
variable "ENV" {
  description = "Environment Code ex)PD/ST/DV"
  type        = string
  default     = ""
}

variable "region" {}
variable "profile_name" {}

/* VPC */
variable "vpc_cidr" {}
variable "subnet_cidrs" {}
variable "vpc_id" {}
variable "igw_id" {}
variable "vgw_id" {}



