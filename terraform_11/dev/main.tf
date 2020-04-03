provider "aws" {
region = "${var.region}"
}
#Pass the parameters to the vpc module
module "my_vpc" {
source = "../modules/vpc"
vpc_cidr = "0.0.0.0/16"
tenancy = "default"
#vpc_id = "${module.my_vpc.vpc_id}"
subnet_cidr = "0.0.0.0/28"
}
module "my_ec2" {
source = "../modules/ec2"
ec2_count = 1
ami_id = "ami-08bc77a2c7eb2b1da"
instance_type = "t2.micro"
}
