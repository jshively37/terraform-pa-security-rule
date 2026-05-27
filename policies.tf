resource "scm_security_rule" "rules" {
  for_each = { for policy in var.policies : policy.name => policy }
  name              = each.value.name
  description       = each.value.description
  from              = each.value.source_zones
  to                = each.value.destination_zones
  source            = each.value.source_addresses
  destination       = each.value.destination_addresses
  action            = each.value.action
  source_user       = each.value.source_users
  folder            = coalesce(each.value.folder, "Prisma Access")
  position          = coalesce(each.value.position, "pre")
  relative_position = coalesce(each.value.relative_position, "bottom")
  application       = coalesce(each.value.application, ["any"])
  category          = coalesce(each.value.category, ["any"])
  service           = coalesce(each.value.service, ["any"])
}
