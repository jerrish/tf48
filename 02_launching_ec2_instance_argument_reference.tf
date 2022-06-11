/*
resource "aws_instance" "linux" {
  tags = {
    Name = "linux-webserver"
    Dept = "developers"
  }
  ami = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  key_name = "awsclass-mumbai-kp"
  availability_zone = "ap-south-1a"
  vpc_security_group_ids = ["sg-00c964bdc99ec345f"]
}
*/