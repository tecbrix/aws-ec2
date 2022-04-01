variable "region" {
    default = "eu-west-1"
}
variable "vpc_id" {
    default = "will be apply"
}
variable "web_sec_id" {
    default = "will be apply"
}
variable "vpc_cidr" {
    default = "will be apply"
}
variable "subnet_id" {
    default = "will be apply"
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
