################################ VPC and  Subnet ###################
variable "vpc_cidr" {
	type = string
}
variable "vpc_name" {
	type = string
}

variable "public_subnet_name" {
	type = string
}
variable "public_subnet_cidr" {
	type = string
}
variable  "public_subnet_availability_zone" {
	type = string
}

variable "private_subnet_name" {
	type = string
}
variable "private_subnet_cidr" {
	type = string
}
variable  "private_subnet_availability_zone" {
	type = string
}

