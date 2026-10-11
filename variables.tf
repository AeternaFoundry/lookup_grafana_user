variable "user_lookup" {
  description = <<EOT
Map of user_lookup, attributes below
Optional:
    - email
    - login
    - user_id
EOT

  type = map(object({
    email   = optional(string)
    login   = optional(string)
    user_id = optional(number)
  }))
}

