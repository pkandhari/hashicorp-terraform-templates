variable "engine" {
  description = "Select DB engine from the list - the list contains all the elgible AWS DB engines"
  type = list(string)
  default = [ "aurora-mysql", "aurora-postgresql", "custom-oracle-ee", "custom-oracle-ee-cdb", "custom-oracle-se2", "custom-oracle-se2-cdb", "db2-ae", "db2-se", "mariadb", "mysql", "oracle-ee", "oracle-ee-cdb", "oracle-se2", "oracle-se2-cdb", "postgres", "sqlserver-ee", "sqlserver-se", "sqlserver-ex", "sqlserver-web" ]
}

variable "engine_version" {
  description = "This is DB engine version"
  type = number
  default = "5.7"
}

variable "db_name" {
  description = "Create name for the DB"
  type = string
  default = "myDBtest"
}

variable "allocated_storage" {
  description = "Define Storage needs to be allocated to the DB"
  type = number
  default = "10"
}

variable "instance_class" {
    description = "Define Instance type for DB"
    type = string
    default = "db.t3.micro"
}