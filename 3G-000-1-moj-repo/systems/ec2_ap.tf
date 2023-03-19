module "ec2_ap" {
  source = "../modules/ec2/common_instance/"
  for_each  = { for k,v in var.ec2_spec : k => v if substr(k, -3, 2) == "ap" }

  name              = "${local.PRO}-${local.SYS}-${var.ENV}-ec2-${replace(each.key, "_", "-")}"
  rbd_name          = "/dev/sda1"
  ebd_device_name   = "/dev/sdb"

  instance_type = each.value.instance_type
  ami           = "ami-0f903fb156f24adbf"

  subnet_id   = each.value.subnet
  private_ip  = each.value.private_ip
# key_name    = var.key_name
# role        = module.iam_roles["ec2_jump_role"].name
  vpc_security_group_ids = [
      var.sg
  ]

  disable_api_termination = true

  root_block_device_name        = "${local.PRO}-${local.SYS}-${var.ENV}-ec2-${replace(each.key, "_", "-")}-01"
  rbd_delete_on_termination     = true
  rbd_volume_type               = "gp3"
  rbd_iops                      = 3000
  rbd_volume_size               = 20
  rbd_encrypted                 = false

  edb_block_device_name         = "${local.PRO}-${local.SYS}-${var.ENV}-ec2-${replace(each.key, "_", "-")}-02"
  ebd_delete_on_termination     = true
  ebd_volume_type               = "gp3"
  ebd_iops                      = 3000
  ebd_volume_size               = 20
  ebd_encrypted                 = false
}