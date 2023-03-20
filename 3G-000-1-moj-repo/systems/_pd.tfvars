/* Common */
ENV           = "pd"
region        = "ap-northeast-1"
role_arn      = "arn:aws:iam::550733172573:role/takamasa1-swichrole"

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
