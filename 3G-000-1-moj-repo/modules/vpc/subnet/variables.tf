variable "vpc_id" {}
variable "name" {}

variable "subnets" {
  description = "list of subnets"
  type = list
  default = []
}

variable "subnet_tags" {
  description = "subnet tags"
  type        = map
  default     = {}
}

variable "cidr_block" {
  description = ""
  type        = string
  default     = ""
}

variable "availability_zone" {
  description = "ap-northeast-1a/ap-northeast-1c/ap-northeast-1d"
  type        = string
  default     = ""
}