variable "access_key" {
  type    = string
  default = "access_key"
}

variable "secret_key" {
  type    = string
  default = "access_key"
}

variable "region" {
  type    = string
  default = "cn-shanghai"
}

variable "vpc_name" {
  type = string
  default = "terraform_root_vpc_name"
}

variable "zone_id" {
  type = string
  default = "cn-shanghai-b"
}

variable "instance_name" {
  type = string
  default = "terraform_instance"
}