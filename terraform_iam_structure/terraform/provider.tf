provider "aws" {
  alias   = "account_000"
  region  = "us-east-1"
  profile = "account-000"
}

provider "aws" {
  alias   = "account_111"
  region  = "us-east-1"
  profile = "account-111"
}