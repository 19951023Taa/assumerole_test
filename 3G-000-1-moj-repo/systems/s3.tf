module "s3_terraform_main" {
  source = "../modules/s3"

  bucket_name = "terraform.s3.tfstate.${var.ENV}"
  policy = templatefile(
    "${path.module}/s3_bucket_policy/terraform_bucket_policy.json",
    {
      bucket_name = "terraform.s3.tfstate",
      account_id  = "${data.aws_caller_identity.this.account_id}"
    }
  )
}