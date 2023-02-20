# GCP Project with new Google Workspace User

This module will createa a new GCP Project and add a new Google Workspace User to the IAM binding inside one specific folder

## Requirements

The module require the following:

* Service Account with the following:
  * Create Service Account Role
  * Project Creator Role
  * User Management Administrator
  * Billing Account User
  * Cloud Billing Manager
* Oauth Scope
  * https://www.googleapis.com/auth/admin.directory.user
  * https://www.googleapis.com/auth/admin.directory.userschema
* GCP Folder Access
* Cloud Billing API

## Variables

The module require the following:

* customer_id
* folder_id