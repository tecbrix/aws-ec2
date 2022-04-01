variable "region" {
    default = "eu-west-1"
}
variable "userdata" {
    default = "files/userdata.sh"
}
 variable "instance_type" {
     default = "t3.micro"
 }
variable "env" {
    default = "test"
}
variable "name" {
    default = "wordpresstest"
}
 locals {
   tags = {
      env = var.env
      Name = var.name
  }
}
