data "grafana_user" "user_lookup" {
  for_each = var.user_lookup

  email   = each.value.email
  login   = each.value.login
  user_id = each.value.user_id
}

