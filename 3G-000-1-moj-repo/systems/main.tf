terraform {
  required_version = "~> 1.3.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.26.0"
    }
  }
  backend "s3" {
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile_name
  default_tags {
    tags = {
      "Env" = var.ENV
      "Sys" = local.SYS
    }
  }
}

data "aws_caller_identity" "this" {}