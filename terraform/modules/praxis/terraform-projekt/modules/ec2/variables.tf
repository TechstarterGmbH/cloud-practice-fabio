variable "ami_id" {
  type = string
  default = "ami-0a485299eeb98b979"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_profile" {
  type = string
  default = ""
}
