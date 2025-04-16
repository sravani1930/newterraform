resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  

  tags = var.tags

}


resource "aws_security_group" "roboshop_all" {
  name        = var.sg_name
  description = var.sg_description
      ingress {
    from_port        = var.inbound_from_port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
  
 }
    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    
  }



  tags = {
    Name = "roboshop_all_aws"
  }
}

