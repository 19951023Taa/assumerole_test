resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags = merge(
    { "Name" = var.bucket_name },
    var.tags
  )
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = var.policy
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = var.object_ownership
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  count = length(var.s3_bucket_lifecycle_name) > 0 ? 1 : 0

  bucket = aws_s3_bucket.this.id
  rule {
    id     = var.s3_bucket_lifecycle_name
    status = var.status

    expiration {
      days = var.expiration_days
    }
  }
}