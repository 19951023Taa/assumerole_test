locals {
  ec2_spec = {
    ap_01  = { instance_type = "t3.micro", private_ip = "10.0.11.20", subnet = "subnet-0e66e035eb0cac799", }
    ap_02  = { instance_type = "t3.micro", private_ip = "10.0.12.20", subnet = "subnet-0d0f067ddd62b79f6", }
    lai_01  = { instance_type = "t3.micro", private_ip = "10.0.11.21", subnet = "subnet-0e66e035eb0cac799", }
    lai_02  = { instance_type = "t3.micro", private_ip = "10.0.12.22", subnet = "subnet-0d0f067ddd62b79f6", }
  }
}


output "output_value2" {
  value = {for k,v in local.ec2_spec : k => v if substr(k, 0, 2) == "ap" }
}

