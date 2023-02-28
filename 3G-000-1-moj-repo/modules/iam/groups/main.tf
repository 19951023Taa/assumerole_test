resource "aws_iam_group" "this" {
  name      = var.name
}

resource "aws_iam_group_policy" "this" {
  count      = length(var.policy_name) > 0 ? 1 : 0

  name       = var.policy_name
  group      = aws_iam_group.this.name
  policy     = var.policy
}

resource "aws_iam_group_policy_attachment" "this" {
  count      = length(var.policy_arn) > 0 ? 1 : 0

  group      = aws_iam_group.this.name
  policy_arn = var.policy_arn
}

