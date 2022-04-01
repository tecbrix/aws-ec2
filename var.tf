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
variable "db_host" {
    default = "will be apply"
}
variable "db_user" {
    default = "will be apply"
}
variable "db_pwd" {
    default = "will be apply"
}
variable "db_name" {
    default = "will be apply"
}
 locals {
   tags = {
      env = var.env
      Name = var.name
  }
}
