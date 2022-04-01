resource "aws_key_pair" "deployer" {
  key_name   = "${var.name}-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCw8DkUYU1IxQyjXckZZvdRT07kF+VXCnYilpRlER0EuHNWoVPwq/hg4WI+5on42ojdEGgJElgPwzuUllD8gOP4yCw/akLJPbG+RMw1Z0cbbyCwgy+HCQRcuIblX9BJmijSNKOgk70KN5gyh6Gsg/YAoGG6unCJEwSa8WpZOOJ5FWHL9EtChx79bfO7dSBtZWRQacnffZs7I4TkyNXUW+WGvjEnw+2MDeTbPVqOPo3by3GB8Tp8rF1wdenzHDHNGhxtNcBlOL7n/5XVTXnnkspzUN9+HjgxeSXVjW7U89q5EAo+Zhq+p8SsLuJeIL8ZcLVnt0hSBFXSgk8H1UTcPt6rQmDyJNWFHwBuyFOCMmAt+rYVmhFPFOZUZY3pz6oS6Vp00e7TOQk3v0oKqdwq67Dpfq6NIjq7Oykjo1vqBFsXOF/8hTErk+EjRDpVxKr1aKcT1QbRynVfKDxwceUGI29ag+eFGzERmdOEWiLQQlyI93OlIImCdL6hEuV12Z8y4D0= root@DESKTOP-PALJ7OT"
}

resource "aws_instance" "ec2" {
    depends_on = [
    module.vpc,
    aws_security_group.web
  ]
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name                    = "${var.name}-key"
  vpc_security_group_ids      = [aws_security_group.web.id]
  associate_public_ip_address = true
  subnet_id                   = module.vpc.pub_subnet_for_ec2

  user_data = file("files/userdata.sh")

  tags = local.tags
}