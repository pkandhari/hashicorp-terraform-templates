#----------------- app-servers -----------------
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0be2609ba883822ec"
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}

#----------------- IAM -----------------
variable "name" {
  description = "User Name"
  type        = string
  default     = "Test"
}