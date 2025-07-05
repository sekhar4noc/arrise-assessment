variable "group_name" {
  type = string
}

variable "users" {
  type = list(string)
}

variable "policy_arn" {
  type = string
}