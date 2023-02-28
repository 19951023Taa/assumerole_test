/* Common */
ENV    = "st"
region = "ap-northeast-1"

/* VPC */
vpc_cidr = "10.0.0.0/16"
vpc_id   = "TBD"
subnet_cidrs = {
  public_subnet_a_01  = { cidr_block = "10.0.1.0/24", az = "ap-northeast-1a", }
  public_subnet_c_01  = { cidr_block = "10.0.2.0/24", az = "ap-northeast-1c", }
  private_subnet_a_01 = { cidr_block = "10.0.11.0/24", az = "ap-northeast-1a", }
  protect_subnet_a_01 = { cidr_block = "10.0.21.0/24", az = "ap-northeast-1a", }
  protect_subnet_c_01 = { cidr_block = "10.0.22.0/24", az = "ap-northeast-1c", }  
}
igw_id = "igw-0077ce6b709025ca0"

/* EC2 */
key_name = "SDX-CR-key-01"
private_ip = {
  brdg_01 = "172.29.12.230",
  jump_01 = "172.29.12.70", #PD subnet
}
sg_id = {
  sg_rds_psql = "sg-0aa014fb9aaea4a9d",
  sg_ec2_jump = "sg-0b5e495d9b0e43a7b",
  sg_ec2_brdg = "sg-015711efc0958189f"
}

/* RDS */
rds_password = "G8h+U!DZ"

vgw_id = "vgw-0db6137d659a71475"