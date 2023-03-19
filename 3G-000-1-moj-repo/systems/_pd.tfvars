/* Common */
ENV           = "pd"
region        = "ap-northeast-1"
profile_name  = "pd"

/* VPC */
vpc_cidr = "10.0.0.0/16"
vpc_id   = "TBD"
subnet_cidrs = {
  public_subnet_a_01  = { cidr_block = "10.0.1.0/24", az = "ap-northeast-1a", }
  public_subnet_c_01  = { cidr_block = "10.0.2.0/24", az = "ap-northeast-1c", }
  private_subnet_a_01 = { cidr_block = "10.0.11.0/24", az = "ap-northeast-1a", }
  private_subnet_c_01 = { cidr_block = "10.0.12.0/24", az = "ap-northeast-1c", }
  private_subnet_d_01 = { cidr_block = "10.0.13.0/24", az = "ap-northeast-1d", }
  protect_subnet_a_01 = { cidr_block = "10.0.21.0/24", az = "ap-northeast-1a", }
  protect_subnet_c_01 = { cidr_block = "10.0.22.0/24", az = "ap-northeast-1c", }
}
igw_id = "igw-0077ce6b709025ca0"

/* EC2 */
key_name = "moj-lis-key-01"
sg       = "sg-08d047399741b857b"
ec2_spec = {
  ap_01  = { instance_type = "t3.micro", private_ip = "10.0.11.20", subnet = "subnet-0e66e035eb0cac799", }
  ap_02  = { instance_type = "t3.micro", private_ip = "10.0.12.20", subnet = "subnet-0d0f067ddd62b79f6", }
}

  # gap_01 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # gap_02 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # ocr_01 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # ocr_02 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # ai_01  = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # ai_02  = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # lai_01 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # sea_01 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # sea_02 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # sea_03 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }
  # iac_01 = { private_ip = "11.0.0.0", subnet = "TBD", instance_type = "t3.medium" }


sg_id = {
  sg_rds_psql = "sg-05cd24cf3cedf4935",
  sg_ec2_jump = "sg-0b5e495d9b0e43a7b",
  sg_ec2_brdg = "sg-0b76888fb15e6c5a8"
}

/* RDS */
database_name   = ""
master_username = "dbadmin"
master_password = "iQ7(y%WV" #TBD
instance_class  = "db.r6g.4xlarge"
rds_password    = ""

vgw_id = "vgw-0db6137d659a71475"