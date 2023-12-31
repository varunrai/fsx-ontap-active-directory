resource "aws_fsx_ontap_file_system" "fsx_ontap_fs" {
  storage_capacity    = 1024
  throughput_capacity = 1024
  deployment_type     = var.deployment_type_multiaz ? "MULTI_AZ_1" : "SINGLE_AZ_1"
  subnet_ids          = var.fsxn_subnet_ids
  preferred_subnet_id = var.deployment_type_multiaz ? var.fsxn_preferred_subnet_id : var.fsxn_subnet_ids[0]
  fsx_admin_password  = var.fsxn_password
  security_group_ids  = var.fsxn_security_group_ids

  tags = {
    "Name" = local.filesystem_name
  }
}



