# AWS ec2 Terraform module

Terraform module which creates ec2 resources on AWS. 
### Usage
```
module "ec2" {
  source = "github.com/tecbrix/aws-ec2"
  name = "test"
  env  = "test"
}
```
