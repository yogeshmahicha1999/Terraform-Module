######################## aceess ###########################

variable "access_key" {}
variable "secret_key" {}
variable "region" {
        default = "ap-south-1"
}

################################### instance ###############################
variable "amiID" {}
variable "instance_type" {}
variable "key" {}
variable "instance_name" {}

################################ VPC and  Subnet ###################
variable "vpc_cidr" {}
variable "vpc_name" {}

variable "public_subnet_name" {}
variable "public_subnet_cidr" {}
variable  "public_subnet_availability_zone" {}

variable "private_subnet_name" {}
variable "private_subnet_cidr" {}
variable  "private_subnet_availability_zone" {}


###################################### SG ###########################

variable  "sg_name" {}    
variable  "port" {}
variable  "sec_port" {}
