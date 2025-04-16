variable "ami_id" {
    type    = string
    default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
    type    = string
    default = "t3.micro"
}
variable "tags" {
    type    = map
    default = {
     name = "HelloWorldTerraform"
     project = "ROBOSHOP"
     Environment = "dev"
    }
}

variable "sg_name" {
    type    = string
    default = "roboshop_all_aws"
}

variable "sg_description" {
    type    = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "inbound_from_port" {
    type    = number
    default = 0
}

variable "cidr_blocks" {
    type    = list
    default = ["0.0.0.0/0"]
}

