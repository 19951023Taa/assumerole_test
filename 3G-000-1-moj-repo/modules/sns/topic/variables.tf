variable "name" {
    type    = string
    default = ""
}

variable "delivery_policy" {
    type    = string
    default = ""
}

variable "tags" {
    type    = map
    default = {}
}


variable "fifo_topic" {
    type    = bool
    default = false
}