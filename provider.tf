provider "googleworkspace" {
  customer_id = var.customer_id
  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.userschema"
  ]
}