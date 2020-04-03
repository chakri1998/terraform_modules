provider "aws" {
  region = var.region
}

#Pass the parameters to the vpc module
module "my_vpc" {
  source   = "../modules/vpc"
  vpc_cidr = "172.31.0.0/16"
  tenancy  = "default"

  vpc_id = module.my_vpc.vpc_id
  subnet_cidr = "172.31.32.0/20"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  instance_type = "t2.micro"
}

