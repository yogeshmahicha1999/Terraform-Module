########################################## instance ################################

module "instance" {
	source 			= "./module/ec2"

	amiID 			= "${var.amiID}"
	instance_type 	= "${var.instance_type}"
	#key 			= file("${path.module}/id_rsa.pub")
	key			 	= "${var.key}"
	instance_name 	= "${var.instance_name}"
  	sg_id       	= module.sg.sg_id
  	subnet_id   	= module.vpc.subnet_id
}

################################################### VPC ###########################
module "vpc" {
	
	source 				  = "./module/vpc"

	vpc_cidr			  =  "${var.vpc_cidr}"	
	vpc_name			  =  "${var.vpc_name}"
	public_subnet_name		  =  "${var.public_subnet_name}"
	public_subnet_cidr		  =  "${var.public_subnet_cidr}"
	public_subnet_availability_zone   =  "${var.public_subnet_availability_zone}"
	private_subnet_name		  =  "${var.private_subnet_name}"
	private_subnet_cidr		  =  "${var.private_subnet_cidr}"
	private_subnet_availability_zone  =  "${var.private_subnet_availability_zone}"



}

############################################ SG ##################################
module "sg" {

	source				  = "./module/sg"

	sg_name				  =  "${var.sg_name}"
	port				  = "${var.port}"
	sec_port			  = "${var.sec_port}"
	vpc_id 			  = module.vpc.vpc_id


}
