variable "engine" {
    type    = string
    default = ""
}

variable "engine_version" {
    type    = string
    default = ""
}

variable "instance_class" {
    type    = string
    default = ""
}

variable "timezone" {
    type    = string
    default = ""
}

variable "storage_type" {
    type    = string
    default = ""
}

variable "db_name" {
    type    = string
    default = ""
}

variable "allocated_storage" {
    type    = string
    default = ""
}

variable "identifier" {
    type    = string
    default = ""
}

variable "username" {
    type    = string
    default = ""
}

variable "password" {
    type    = string
    default = ""
}

variable "db_subnet_group_name" {
    type    = string
    default = ""
}

variable "vpc_security_group_ids" {
    type    = list
    default = []
}

variable "port" {
    type    = string
    default = ""
}

variable "parameter_group_name" {
    type    = string
    default = ""
}


variable "storage_encrypted" {
    type    = bool
    default = true
}

variable "backup_retention_period" {
    type    = string
    default = ""
}

variable "backup_window" {
    type    = string
    default = ""
}

variable "enabled_cloudwatch_logs_exports" {
    type    = list
    default = []
}

variable "auto_minor_version_upgrade" {
    type    = bool
    default = false
}

variable "maintenance_window" {
    type    = string
    default = ""
}

variable "deletion_protection" {
    type    = bool
    default = true
}

variable "tags" {
    type    = map
    default = {}
}

variable "subnet_ids" {
    type    = list
    default = []
}

variable "family" {
    type    = string
    default = ""
}
