module "cli_group" {
  source        = "../../../modules/iam_user_group"
  group_name    = "group1"
  users         = ["engine", "ci"]
  policy_arn    = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
  providers     = { aws = aws.account_000 }
}

module "full_group" {
  source        = "../../../modules/iam_user_group"
  group_name    = "group2"
  users         = ["John Doe", "Aboubacar Maina"]
  policy_arn    = "arn:aws:iam::aws:policy/AdministratorAccess"
  providers     = { aws = aws.account_000 }
}