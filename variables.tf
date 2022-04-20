variable "allocated_storage" {
  type        = string
  description = "The allocated storage in gibibytes"
}

variable "engine" {
  type        = string
  description = "The database engine to use"
}

variable "engine_version" {
  type        = string
  description = "The engine version to use"
}

variable "instance_class" {
  type        = string
  description = "The instance type of the RDS instance"
}

variable "db_name" {
  type        = string
  description = "name of rds"
}

variable "username" {
  type        = string
  description = "username to be set for rds"
}

variable "password" {
  type        = string
  description = "password to be set for rds"
}

variable "parameter_group_name" {
  type        = string
  description = "parameter_group_name"
}

variable "skip_final_snapshot" {
  type        = string
  description = "skip_final_snapshot may be true or false"
}