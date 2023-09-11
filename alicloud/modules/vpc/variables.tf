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
  type    = string
  default = "terraform_vpc"
}

variable "vpc_cidr_block" {
  type    = string
  default = "172.16.0.0/12"
}

variable "vsw_cidr_block" {
  type = string
  default = "172.16.0.0/21"
}

variable "zone_id" {
  type = string
  default = "cn-shanghai-b"
}