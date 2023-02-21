variable "allocated_storage" {
    type = string
    description = "The allocated storage in gibibytes"
}

variable "engine" {
    type = string
    description = "The database engine to use"
}

variable "engine_version" {
    type = string
    description = "The engine version to use"
}

variable "instance_class" {
    type = string
    description = "The instance type of the RDS instance"
}

variable "db_name" {
    type = string
    description = "name of rds"
}

variable "username" {
    type = string
    description = "username to be set for rds"
}

variable "password" {
    type = string
    description = "password to be set for rds"
}

variable "parameter_group_name" {
    type = string
    description = "parameter_group_name"
}

variable "skip_final_snapshot" {
    type = string
    description = "skip_final_snapshot may be true or false" 
}
variable "multi_az" {
    type = bool
    description = "Specifies if the RDS instance is multi-AZ"
    default = true
}
variable "port" {
    description = "The port on which the DB accepts connections"
    type = number
}
variable "db_subnet_group_name" {
    description = "Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC, or in EC2 Classic, if available. When working with read replicas, it should be specified only if the source database specifies an instance in another AWS Region"
    type = string
    default = "default"
}
variable "monitoring_interval" {
    description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
    type = number
    default = 30
}
# variable "monitoring_role_arn" {
#     description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs"
#     type = string
# }
variable "deletion_protection" {
    description = "If the DB instance should have deletion protection enabled"
    type = bool
    default = true
}
variable "iam_database_authentication_enabled" {
    description = "Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled."
    type = bool
    default = true
  
}
variable "copy_tags_to_snapshot" {
    description = "Copy all Instance tags to snapshots."
    type =bool
    default = true  
}