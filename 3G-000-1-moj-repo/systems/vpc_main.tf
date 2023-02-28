module "vpc_main" {
  source = "../modules/vpc/vpc"

  cidr_block = var.vpc_cidr
  vpc_name   = "${local.PRO}-${local.SYS}-${var.ENV}-vpc-01"

  /* DHCP Option Set */
  enable_dhcp_options = true
  dhcp_opt_set_name   = "${local.PRO}-${local.SYS}-${var.ENV}-dhcp-optionset-01"

  /* Internet Gateway */
  create_igw = true
  igw_name   = "${local.PRO}-${local.SYS}-${var.ENV}-igw-01"
}

