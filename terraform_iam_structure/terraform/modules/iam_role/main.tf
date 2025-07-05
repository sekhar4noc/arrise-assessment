resource "aws_iam_role" "this" {
  name = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = var.assume_account != null ? {
          AWS = "arn:aws:iam::${var.assume_account}:root"
        } : {
          Service = var.assume_service
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "inline" {
  name   = "${var.role_name}-policy"
  role   = aws_iam_role.this.id
  policy = file(var.policy_json)
}