variable "role_name" {
  type = string
  default = "my_ec2_instance_role"
}

variable "policy_actions" {
  type = list(string)
}

variable "policy_effect" {
  type = string
  default = "Allow"
}

variable "policy_resources" {
  type = list(string)
}
