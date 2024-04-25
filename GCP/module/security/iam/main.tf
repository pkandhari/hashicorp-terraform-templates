/******************************************
 Creating Service Account
 *****************************************/
resource "google_service_account" "service_account" {
  account_id   = var.service_account
  display_name = var.service_account
  description  = var.service_account
  project      = var.project_id
}

/******************************************
 Setting IAM roles to Service Account and members
 *****************************************/
module "set-iam-roles" {
  source     = "../project-iam"
  project_id = var.project_id
  roles_and_members = [
    {
      role = "roles/compute.viewer"
      members = [
        "serviceAccount:sac-plt-terraform@prokopto-plt-eng.iam.gserviceaccount.com",
        "serviceAccount:sac-test@prokopto-plt-eng.iam.gserviceaccount.com",
      ]
    },
    {
      role = "roles/browser"
      members = [
        "serviceAccount:sac-plt-terraform@prokopto-plt-eng.iam.gserviceaccount.com",
        "serviceAccount:sac-test@prokopto-plt-eng.iam.gserviceaccount.com",
      ]
    },
  ]
}