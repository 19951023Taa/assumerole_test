/* Common */
variable "ENV" {
  description = "Environment Code ex)PD/ST/DV"
  type        = string
  default     = ""
}

variable "region" {}

/* VPC */
variable "vpc_cidr" {}
variable "subnet_cidrs" {}
variable "vpc_id" {}
variable "igw_id" {}
variable "vgw_id" {}

/* EC2 */
variable "key_name" {}
variable "private_ip" {}
variable "sg_id" {}

/* RDS */
variable "rds_password" {}