variable "vnsg" {
  type = map(object({
    name                = string
    location            = optional(string)
    resource_group_name = optional(string)
    })
  )
}

variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = list(string)
  }))
}
