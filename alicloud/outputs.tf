/*
output "types" {
  value = data.alicloud_instance_types.default.*.instance_types
}

output "image" {
  value = data.alicloud_images.default.*.ids
}
*/

output "instance_id" {
  value = alicloud_instance.instance.id
}