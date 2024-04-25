/******************************************
 Local variables
 *****************************************/
locals {
  members = flatten([
    for x in var.roles_and_members : [
      for member in lookup(x, "members") : {
        member = member
        role   = lookup(x, "role")
      }
    ]
  ])
}

/******************************************
 Project level IAM
 *****************************************/
resource "google_project_iam_member" "this" {
  for_each = {
    for x in local.members : "${lookup(x, "role")}|${lookup(x, "member")}" => x
  }

  project = var.project_id
  member  = lookup(each.value, "member")
  role    = lookup(each.value, "role")
}
