locals {
  PRO = "moj"
  SYS = "lis"

  operation_cidr_blocks = {
    vdi01          = "198.144.162.132/32",
    vdi02          = "118.238.29.10/32",
    vdi03          = "150.249.255.194/32",
    vdi04          = "150.249.255.202/32",
    ryogoku_mainte = "39.110.235.234/32",
  }

  customer_cidr_blocks = {
    class_a = "10.0.0.0/8",
    class_b = "172.16.0.0/12",
    class_c = "192.168.0.0/16",
  }

  event_principals = {
    cloudwatch_event = "events.amazonaws.com"
  }

  action_arns = {
    stop      = "arn:aws:swf:ap-northeast-1:${data.aws_caller_identity.this.account_id}:action/actions/AWS_EC2.InstanceId.Stop/1.0"
    terminate = "arn:aws:swf:ap-northeast-1:${data.aws_caller_identity.this.account_id}:action/actions/AWS_EC2.InstanceId.Terminate/1.0"
    reboot    = "arn:aws:swf:ap-northeast-1:${data.aws_caller_identity.this.account_id}:action/actions/AWS_EC2.InstanceId.Reboot/1.0"
    recover   = "arn:aws:automate:ap-northeast-1:ec2:recover"
  }

  managed_policy_arns = {
    AmazonEC2RoleforSSM         = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
    CloudWatchAgentServerPolicy = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    AmazonS3FullAccess          = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    CloudWatchFullAccess        = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
    CloudWatchLogsFullAccess    = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
    AWSLambdaBasicExecutionRole = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
    AdministratorAccess         = "arn:aws:iam::aws:policy/AdministratorAccess"
  }

  pgp_key = "mQENBGPI9G0BCADhUn0TIT16XTa3WZ4nXTo6ChfHxivn5iuPw84Hap61APstmxyfp2ZAqL+GZUnZWSF9aE/VyH5BVBtDeNF2xZTGAXZyka67DIw1ECQS3yRXNL/7eior3iIkhkdbgZMjcW8Z3oo/u7nsIL3U1MQAeWArDHzFrd4ynn/ysL/JAs84XaoHT0ZI5n2XHTwYApNy80ZUWpfeuG9/zZoIQvT7WkxAFFT573foOrzazxlpyYKKx016/au7zhsogIGylD1oDXUdklwpDDO9pVhCG9Cu+ykVa3Rvb9Er2VNzRuPVur7LBNioyz5PGep0QemXPKTofvH6ersus3PjF/2e9/5OwsHZABEBAAG0EFNEWF9pYW1fdXNlcl9rZXmJATkEEwECACMFAmPI9G0CGwMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAKCRAkbx798bG/v73VCACR3GeizuRrG5vMOELwixGc2hAKudic9dWo4Gid3eWtiMcVcfqEaKHgmNLdcvHlD9Td1oviHPOeTLb10MLOHqDM6WQBe3FGp7PI53ysoN7M3O2InoGOPThI5FRBI7oE/irVT5WMLD/JXhlj41ujLWdKbmDGPT82Vf8nj7pQkzv4kUxL1fBWBnXGX5m7DMwj4yTCf+M+lmAQfYosSIzgSmVi5GpkOhhs8h5Kkro/TrSqelvVrH6wIeCRtSzNNCvanhmgXrCbfe0XwtpsntM5QPI4d4NRxQGVg0WhR24IFwkloyeJLm6vQzePS+AY03nOitKJeCkXxAHFotxKWvfo0StzuQENBGPI9G0BCADM78wUEqon8YGhCiSsR0GAcoARD9CZOpPyPx3D0edzsXvzMygsKREd+G4vegYrF4kftqw22fB2uh55es6+IlPxaRsMd8+U0auprI6XrJAV77eORVzpuVeR8KZ3zQkoqln8db/zgeN+dTvsIrRrzlCBHUFpJG7LVbtOvkiZS9YMu9/GvvBFs1CBhjyeyUIVHpsIf9d6ESc4ZcoCg6/dfEHbav27qbT7kQiEKw86XXEx66VmAU0FD0nyqHOVL2Vm3E/wmcUO11TO95+xp+klIAACIJOdiE0ANP9jW0XTRW30NPgb8VYuihLqwGFpFttYcutD2A/zEeRAJPbpCUO6M2b1ABEBAAGJAR8EGAECAAkFAmPI9G0CGwwACgkQJG8e/fGxv78k1wgAxYdpV/mrGIbBZx8tuCzhRs1RmGbB2WkfwzHklYv4LmxH6QN+SeDBw9/fdPlVAabWo9t0/Irp7v/LwV72NufqUf0P1u5F5rJ2yiKe9YZgDKJS6NBZhG5dEqVZXJcRzstuX25wfoU+Z13Z88V1RnI855W8x05N6zG3q5bNMAYIa9gE3AJs94t2JwEcxz+8OQEK8x75UtzuQLooyMoZQ1fDpwMHMIIOxZvpoGC0f6DRFjOk6LXGmLGvDZBJSCgp5bdVObrg52sLcNZsMp9lB58RE39GFCHVSTxLyxA4JgC71LPztHsv59jACFySHpLklQdzdrt9/VN9Klm6I33AG6ctag=="

}