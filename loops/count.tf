resource "aws_instance" "web" {
  count = 11 #count.index is a special variable
  ami           = var.ami_id
  instance_type = var.instance_type
  #vpc_security_group_ids = [aws_security_group.roboshop_all.id]
  tags = {
    Name = var.instance_names[count.index]
  }

}