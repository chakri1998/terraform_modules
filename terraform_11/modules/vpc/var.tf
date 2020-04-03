#defining variables required by vpc module
variable "vpc_cidr" {
default = "0.0.0.0/0"
}
variable "tenancy" {
default = "dedicated"
}
variable "vpc_id" {
default = "vpc-b41d34ce"
}
variable "subnet_cidr" {
default = "0.0.0.0/0"
}
