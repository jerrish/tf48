/*
variable "ami" {
  type = string
  default = "ami-079b5e5b3971bd10d"
}
variable "list" {
  type = list
  default = ["t2.small" , "t2.micro"]
}
resource "aws_instance" "linux" {
  ami = var.ami
  instance_type = var.list[1]
}
*/