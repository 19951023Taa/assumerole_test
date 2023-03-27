module "s3_terraform_main" {
  source = "../modules/s3"

  bucket_name = "terraform.s3.tfstate.${var.ENV}"
    }
