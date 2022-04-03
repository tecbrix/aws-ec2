# AWS ec2 Terraform module

Terraform module which creates ec2 resources on AWS. 
### Usage
```
git clone https://github.com/tecbrix/aws-ec2.git
cd aws-ec2
```
add a file main.tf with below content.
```
module "vpc" {
  source = "github.com/tecbrix/aws-vpc"
#tag
  name = "test"
  env  = "test"
}
terraform apply
```

