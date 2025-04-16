variable instance_names {
    type = list
    default = ["mongodb","web","redis","cart","user","shipping","rabbitmq","payment","mysql","dispatch","catalogue"]
}

variable "ami_id" {
    type    = string
    default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
    type    = string
    default = "t3.micro"
}
# variable "tags" {
#     type    = map
#     default = {
#      name = "web"
#      project = "ROBOSHOP"
#      Environment = "dev"
#     }
# }