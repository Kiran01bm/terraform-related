variable "platform_name" {
  default = "test"
}

variable "platform_cidr" {
  default = "10.0.0.0/16"
}

variable "public_cidrs" {
  type    = "list"
  default = ["0.0.0.0/0"]
}
