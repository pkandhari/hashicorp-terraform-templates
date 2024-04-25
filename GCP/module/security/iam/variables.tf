#----------------- IAM -----------------
variable "project_id" {
  description = "project ID of GCP or Service Project ID in case of shared VPC"
  default     = "prokopto-plt-eng"
}

variable "service_account" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "sac-plt-terraform@prokopto-plt-eng.iam.gserviceaccount.com"
}
