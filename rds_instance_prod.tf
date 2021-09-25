resource "aws_db_instance" "prod" {
  identifier = "${var.PROJECT_NAME}-prod-rds"
  #final_snapshot_identifier = "${var.PROJECT_NAME}-prod-rds-final-snapshot"
  allocated_storage = "${var.RDS_ALLOCATED_STORAGE}"
  storage_type = "gp2"
  engine = "${var.RDS_ENGINE}"
  engine_version = "${var.ENGINE_VERSION}"
  instance_class = "${var.DB_INSTANCE_CLASS}"
  backup_retention_period = "${var.BACKUP_RETENTION_PERIOD}"
  publicly_accessible = "${var.PUBLICLY_ACCESSIBLE}"
  username = "${var.RDS_USERNAME}"
  password = "${var.RDS_PASSWORD}"
  skip_final_snapshot = "true"

}


output "rds_prod_endpoint" {
  value = "${aws_db_instance.prod.endpoint}"
}

