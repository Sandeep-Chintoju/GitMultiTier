variable "region" {
  default = "ap-south-1"

}
variable "access_key" {
  type = string

}

variable "secret_key" {
  type = string

}

variable "ami" {
  default = "ami-0c1a7f89451184c8b"

}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "terraformkp"

}

variable "vpc_id" {
  default = "vpc-94db29ff"

}

variable "privatekeypath" {}
