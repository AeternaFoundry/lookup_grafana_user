output "user_lookup_id" {
  description = "Map of id values across all user_lookup, keyed the same as var.user_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_user.user_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_lookup_email" {
  description = "Map of email values across all user_lookup, keyed the same as var.user_lookup except keys with no email are omitted"
  value       = { for k, v in data.grafana_user.user_lookup : k => v.email if v.email != null && length(v.email) > 0 }
}
output "user_lookup_is_admin" {
  description = "Map of is_admin values across all user_lookup, keyed the same as var.user_lookup except keys with no is_admin are omitted"
  value       = { for k, v in data.grafana_user.user_lookup : k => v.is_admin if v.is_admin != null }
}
output "user_lookup_login" {
  description = "Map of login values across all user_lookup, keyed the same as var.user_lookup except keys with no login are omitted"
  value       = { for k, v in data.grafana_user.user_lookup : k => v.login if v.login != null && length(v.login) > 0 }
}
output "user_lookup_name" {
  description = "Map of name values across all user_lookup, keyed the same as var.user_lookup except keys with no name are omitted"
  value       = { for k, v in data.grafana_user.user_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "user_lookup_user_id" {
  description = "Map of user_id values across all user_lookup, keyed the same as var.user_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.grafana_user.user_lookup : k => v.user_id if v.user_id != null }
}

