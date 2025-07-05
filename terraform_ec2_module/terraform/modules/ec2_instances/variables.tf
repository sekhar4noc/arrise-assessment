variable "instances" {
  description = "List of EC2 configurations"
  type = list(object({
    instance_type = string
    volume_type   = string
    volume_size   = number
    key_name      = string
  }))
}

variable "ami_id" {
  description = "AMI ID to launch instances with"
  type        = string
}