module "roleA" {
  source         = "../../../modules/iam_role"
  role_name      = "roleA"
  policy_json    = file("${path.module}/roleA_policy.json")
  assume_service = "ec2.amazonaws.com"
  providers      = { aws = aws.account_000 }
}

module "roleB" {
  source         = "../../../modules/iam_role"
  role_name      = "roleB"
  policy_json    = file("${path.module}/roleB_policy.json")
  assume_service = "ec2.amazonaws.com"
  providers      = { aws = aws.account_000 }
}