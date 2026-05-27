variable "policies" {
  type = map(object({
    name                  = string
    description           = string
    source_zones          = list(string)
    destination_zones     = list(string)
    source_addresses      = list(string)
    destination_addresses = list(string)
    action                = string
    source_users          = list(string)
    relative_position     = optional(string)
  }))
}
