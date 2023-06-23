# Shree Ganeshayah Namah

variable "instance_profile" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnet" {
  type = string
}

variable "ami" {
  type = string
}

variable "root_size" {
  type    = number
  default = 20
}

variable "key_name" {
  type    = string
  default = "qsi_adis_key"
}

variable "tags" {
  type = map(string)
}

variable "has_instance_profile" {
  type    = bool
  default = false
}
variable "has_instance_config" {
  type    = bool
  default = false
}

variable "instance_config" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "attach_public_ip" {
  type    = bool
  default = false
}

variable "attach_eip" {
  type    = bool
  default = false
}