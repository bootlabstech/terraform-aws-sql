resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name                 = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = var.skip_final_snapshot
  multi_az = var.multi_az
  port = var.port 
  db_subnet_group_name = var.db_subnet_group_name
  monitoring_interval = var.monitoring_interval
  # monitoring_role_arn = var.monitoring_role_arn
  deletion_protection = var.deletion_protection
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  copy_tags_to_snapshot = var.copy_tags_to_snapshot
}