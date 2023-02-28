module "rds_cluster_main" {
  source = "../modules/rds_cluster"

  cluster_identifier     = "${local.PRO}-${local.SYS}-${var.ENV}-rds-cluster-01"
# vpc_security_group_ids = [module.securitygroups["sg_rds_main_psql"].group_id]
  engine                 = "aurora-postgresql"
  engine_version         = "14.6"
  port                   = 5432
  database_name          = var.database_name
  master_username        = var.master_username
  master_password        = var.master_password

  instance_class         = var.instance_class
  parameter_group_name    = "${local.PRO}-${local.SYS}-${var.ENV}-db-cluster-parametergroup-01"
  db_parameter_group_name    = "${local.PRO}-${local.SYS}-${var.ENV}-db-instance-parametergroup-01"
  storage_encrypted       = true
  backup_retention_period = 1
  preferred_backup_window           = "16:00-16:30"
  enabled_cloudwatch_logs_exports = [
    "postgresql"
  ]
  auto_minor_version_upgrade = false
  preferred_maintenance_window         = "Sat:17:00-Sat:17:30"
  deletion_protection        = false


  subnet_ids = [
    module.vpc_subnets["private_subnet_a_01"].subnet_id,
    module.vpc_subnets["private_subnet_c_01"].subnet_id
  ]

  family = "aurora-postgresql14"
  db_subnet_group_name = "${local.PRO}-${local.SYS}-${var.ENV}-db-subnetgroup-01"
}
