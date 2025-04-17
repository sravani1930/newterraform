resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8.id
  instance_type = "t3.micro"
  #vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "Data-source"
  }
}