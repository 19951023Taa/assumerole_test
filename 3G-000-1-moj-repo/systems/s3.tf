module "s3_terraform_main" {
  count  = var.ENV == "pd" ? 1 : 0
  source = "../modules/s3"

  bucket_name = "terraform.s3.tfstate.pd.st"
  policy = templatefile(
    "${path.module}/s3_bucket_policy/terraform_bucket_policy.json",
    {
      bucket_name = "terraform.s3.tfstate",
      account_id  = "${data.aws_caller_identity.this.account_id}"
    }
  )
}