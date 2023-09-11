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

module "vpc" {
  source = "./modules/vpc"
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
  vpc_name = var.vpc_name
  zone_id = var.zone_id
}

module "group" {
  source = "./modules/group"
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
  vpc_id = module.vpc.vpc_id
}


resource "alicloud_instance" "instance" {
  availability_zone = var.zone_id
  security_groups   = module.group.group_id
  instance_type              = "ecs.t5-lc1m1.small"
  system_disk_category       = "cloud_efficiency"
  image_id                   = "centos_7_04_64_20G_alibase_201701015.vhd"
  instance_name              = var.instance_name
  vswitch_id                 = module.vpc.vsw_id
  internet_charge_type       = "PayByTraffic"
}


/**
data "alicloud_images" "default" {
owners     = "system"
}

data "alicloud_instance_types" "default" {
}
*/

