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

/* EC2 */
variable "key_name" {}
variable "sg_id" {}
variable "ec2_spec" {}
variable "sg" {}

/* RDS */
variable "rds_password" {}
variable "database_name" {}
variable "master_username" {}
variable "master_password" {}
variable "instance_class" {}
