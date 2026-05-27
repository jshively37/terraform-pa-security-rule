resource "scm_security_rule" "rules" {
  for_each          = var.policies
  name              = each.value.name
  description       = each.value.description
  from              = each.value.source_zones
  to                = each.value.destination_zones
  source            = each.value.source_addresses
  destination       = each.value.destination_addresses
  action            = each.value.action
  application       = each.value.application
  category          = each.value.category
  service           = each.value.service
  source_user       = each.value.source_users
  folder            = each.value.folder
  position          = each.value.position
  relative_position = each.value.relative_position
}
