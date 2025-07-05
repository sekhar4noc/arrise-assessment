resource "aws_iam_group" "this" {
  name = var.group_name
}

resource "aws_iam_user" "users" {
  for_each = toset(var.users)
  name     = each.value
}

resource "aws_iam_group_membership" "this" {
  name  = var.group_name
  users = var.users
  group = aws_iam_group.this.name
}

resource "aws_iam_group_policy_attachment" "this" {
  group      = aws_iam_group.this.name
  policy_arn = var.policy_arn
}