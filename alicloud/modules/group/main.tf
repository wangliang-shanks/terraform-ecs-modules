provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}

terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.209.1"
    }
  }
}

resource "alicloud_security_group" "default" {
  name   = "default"
  vpc_id = var.vpc_id
}

resource "alicloud_security_group_rule" "allow_all_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 1
  security_group_id = alicloud_security_group.default.id
  cidr_ip           = "0.0.0.0/0"
}