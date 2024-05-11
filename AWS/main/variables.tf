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

#----------------- RDS -----------------
variable "engine" {
  description = "Which DB engine needs to be created"
  type        = list(string)
  default     = ["aurora-mysql", "aurora-postgresql", "custom-oracle-ee", "custom-oracle-ee-cdb", "custom-oracle-se2", "custom-oracle-se2-cdb", "db2-ae", "db2-se", "mariadb", "mysql", "oracle-ee", "oracle-ee-cdb", "oracle-se2", "oracle-se2-cdb", "postgres", "sqlserver-ee", "sqlserver-se", "sqlserver-ex", "sqlserver-web"]
}

variable "engine_version" {
  description = "This is DB engine version"
  type        = number
  default     = "5.7"
}

variable "db_name" {
  description = "Create name for the DB"
  type        = string
  default     = "myDBtest"
}

variable "allocated_storage" {
  description = "Define Storage needs to be allocated to the DB"
  type        = number
  default     = "10"
}

variable "instance_class" {
  description = "Define Instance type for DB"
  type        = string
  default     = "db.t3.micro"
}
