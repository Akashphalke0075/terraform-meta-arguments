resource "aws_instance" "class-ec2-server" {
  instance_type = "t2.micro"
  ami = "ami-0b5eea76982371e91"
  depends_on = [aws_security_group.class-ec2-server-sg] # Meta argument
  vpc_security_group_ids = [aws_security_group.class-ec2-server-sg.id]
  tags = {
    "Name" = "class-ec2-server"
  }
}

resource "aws_security_group" "class-ec2-server-sg" {
  name        = "class-ec2-server-sg"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["94.213.52.135/32"] #Change IP Address as per your need
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["94.213.52.135/32"] #Change IP Address as per your need
  }
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks = ["::/0"]
    from_port = 0
    to_port   = 0
    protocol = -1
  } 
}