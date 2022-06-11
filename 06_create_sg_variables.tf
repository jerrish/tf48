resource "aws_security_group" "demo_sg" {
  name        = "tf-sg"
  description = "Allow Onpremises server to EC2 Instance"
  vpc_id      = "vpc-0e21b155f49c7c0a5"
  
  ingress {
    from_port        = var.rdpport
    to_port          = var.rdpport
    protocol         = var.tfprotocol
    cidr_blocks      = [var.onprem_server]
  }
  
  ingress {
    from_port        = var.httpport
    to_port          = var.httpport
    protocol         = var.tfprotocol
    cidr_blocks      = [var.onprem_server]
  }
  
  ingress {
    from_port        = var.nfsport
    to_port          = var.nfsport
    protocol         = var.tfprotocol
    cidr_blocks      = [var.onprem_server]
  }

  tags = {
    Name = "tf-sg"
  }
}
