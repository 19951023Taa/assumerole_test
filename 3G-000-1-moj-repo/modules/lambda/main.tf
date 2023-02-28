data "archive_file" "this" {
	type        = "zip"
	source_file  = var.source_file
	output_path = var.output_path
}

resource "aws_lambda_function" "this" {
  filename          = var.output_path
  function_name     = var.lambda_function_name
  role              = var.role
  handler           = var.handler
  runtime           = var.runtime
  source_code_hash  = filebase64sha256("${var.output_path}")
  environment  {
    variables    = var.variables
 }
  tags = merge(
    {"Name" = var.lambda_function_name},
    var.tags
  )
}
