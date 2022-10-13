locals{
        instance_name = "${terraform.workspace}-${var.instance_name}"
}

resource "aws_instance" "os1" {

        ami = var.amiID
        instance_type = var.instance_type
        key_name = var.key
        vpc_security_group_ids  = [var.sg_id]
	subnet_id = var.subnet_id
        tags =  {
                        Name = local.instance_name
        }


}

