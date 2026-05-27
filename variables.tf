variable "policies" {
  type = list(object({
    name                  = string
    description           = string
    source_zones          = list(string)
    destination_zones     = list(string)
    source_addresses      = list(string)
    destination_addresses = list(string)
    action                = string
    source_users          = list(string)
    relative_position     = optional(string)
    application           = optional(list(string))
    category              = optional(list(string))
    service               = optional(list(string))
    folder                = optional(string)
    position              = optional(string)
  }))
}
