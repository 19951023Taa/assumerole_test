module "s3_terraform_main" {
  count  = var.ENV == "pd" ? 1 : 0
  source = "../modules/s3"

  bucket_name = "3g-000-1-terraform-bucket"
}