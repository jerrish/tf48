/*
variable "ami" {
  type = string
  default = "ami-079b5e5b3971bd10d"
}
variable "map" {
  type = map
  default = {
    small = "t2.small"
    micro = "t2.micro"
  }
}
resource "aws_instance" "linux" {
  ami = var.ami
  instance_type = var.map["micro"]
}
*/