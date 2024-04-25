variable "project_id" {
  type        = string
  description = "(Required) Project ID where the IAM policy belongs"
}

variable "roles_and_members" {
  type        = list(object({ role = string, members = list(string) }))
  description = "(Required) The list of roles and members being created"
}
