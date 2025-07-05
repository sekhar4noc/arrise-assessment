variable "role_name" {
  type = string
}

variable "policy_json" {
  type = string
}

variable "assume_service" {
  type    = string
  default = null
}

variable "assume_account" {
  type    = string
  default = null
}