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

resource "alicloud_vpc" "vpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr_block
}

resource "alicloud_vswitch" "vsw" {
  vpc_id     = alicloud_vpc.vpc.id
  cidr_block = var.vsw_cidr_block
  zone_id    = var.zone_id
}