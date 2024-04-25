#----------------- app-servers -----------------
variable "project_id" {
  description = "project ID of GCP or Service Project ID in case of shared VPC"
  default     = "prokopto-plt-eng"
}

variable "region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "zone" {
  description = "Zone in which AWS resources to be created"
  type        = string
  default     = "us-east-1-b"
}

variable "service_account" {
  description = "SA which is used by the AWS resource"
  type        = string
  default     = "sac-plt-terraform@prokopto-plt-eng.iam.gserviceaccount.com"
}