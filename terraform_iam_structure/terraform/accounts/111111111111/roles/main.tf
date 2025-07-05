module "roleC" {
  source         = "../../../modules/iam_role"
  role_name      = "roleC"
  policy_json    = file("${path.module}/roleC_policy.json")
  assume_account = "000000000000"
  providers      = { aws = aws.account_111 }
}