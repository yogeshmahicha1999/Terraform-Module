################################## Security-Group #######################################
# Resource: aws_security_group
resource "aws_security_group" "VPC" {
  name        = var.sg_name
  vpc_id      = var.vpc_id

  ingress {
    description = "Web Access"
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH Access"
    from_port   = var.sec_port
    to_port     = var.sec_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


