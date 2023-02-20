resource "random_integer" "project_id" {
  min = 1
  max = 50000
}

resource "random_string" "random_pass" {
  length           = 16
  lower            = true
  numeric          = true
  special          = false
}

resource "google_project" "terraform_project" {
  name       = local.project_name
  project_id = local.project_id
  folder_id  = var.folder_id
  billing_account = var.billing_account
}

resource "google_project_iam_binding" "project" {
  project = google_project.terraform_project.id
  role    = "roles/editor"

  members = [
    local.sandbox_binding
  ]
}

resource "google_service_account" "service_account" {
  account_id   = local.service_account_id
  display_name = local.service_account_name
  project = google_project.terraform_project.project_id
}


resource "googleworkspace_user" "sandbox-user" {
  primary_email = local.user_email
  password      = sha1(random_string.random_pass.result)
  hash_function = "SHA-1"


  name {
    family_name = "Sandbox"
    given_name  = local.user_name
  }
}