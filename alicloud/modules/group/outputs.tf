output "group_id" {
  value = alicloud_security_group.default.*.id
}