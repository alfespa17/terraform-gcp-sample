locals {
  project_id = lower(format("project-%s", random_integer.project_id.result))
  project_name = lower(format("sandbox-%s",  random_integer.project_id.result))
  service_account_id = lower(format("sa%s",  random_integer.project_id.result))
  service_account_name = lower(format("sa-account-%s",  random_integer.project_id.result))
  user_email = lower(format("user%s@%s",  random_integer.project_id.result, var.domain))
  user_name = lower(format("user%s",  random_integer.project_id.result))
  sandbox_binding = lower(format("user:%s",  local.user_email))
}   