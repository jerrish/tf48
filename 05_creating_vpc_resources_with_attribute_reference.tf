/*
resource "aws_vpc" "demo_vpc" {
  cidr_block = "192.168.2.0/24"
  tags = {
    Name = "tf-vpc"
}
}

resource "aws_subnet" "demo_subnet" {
    vpc_id = aws_vpc.demo_vpc.id
    cidr_block = "192.168.2.0/26"
    tags = {
        Name = "tf-vpc-subnet1"
    }
}

resource "aws_internet_gateway" "demo_igw" {
  vpc_id = aws_vpc.demo_vpc.id
  tags = {
    Name = "tf-vpc-igw"
  }
}

resource "aws_default_route_table" "demo_route" {
  default_route_table_id = aws_vpc.demo_vpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo_igw.id
  }
  tags = {
    Name = "tf-vpc-main-rt"
  }
}

resource "aws_instance" "linux" {
  tags = {
    Name = "linux-webserver"
    Dept = "developers"
  }
  ami = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  key_name = "awsclass-mumbai-kp"
  availability_zone = "ap-south-1a"
  subnet_id = aws_subnet.demo_subnet.id
}
*/