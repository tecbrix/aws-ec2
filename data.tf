data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "template_file" "init" {
  template = "${file(var.userdata)}"

  vars = {
    WORDPRESS_DB_NAME = "${var.db_name}"
    WORDPRESS_DB_USER = "${var.db_user}"
    WORDPRESS_DB_PASSWORD = "${var.db_pwd}"
    WORDPRESS_DB_HOST = "${var.db_host}"
  }
}
