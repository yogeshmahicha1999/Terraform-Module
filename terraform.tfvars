##################################### access  ##################################

access_key = ""
secret_key = ""
region     = "ap-south-1"

###################################### instance #######################

amiID = "ami-06489866022e12a14"
instance_type = "t2.micro"
key = "Terraform"
instance_name = "ec2"

############################### VPC and Subnet ###################################

vpc_cidr = "192.168.0.0/16"
vpc_name = "main-vpc"

public_subnet_name = "public"
public_subnet_cidr = "192.168.1.0/24"
public_subnet_availability_zone = "ap-south-1a"

private_subnet_name = "private"
private_subnet_cidr = "192.168.2.0/24"
private_subnet_availability_zone = "ap-south-1b"


################################# SG ###########################################


sg_name     = "new-sg"

port        = "80"
sec_port    = "22"

