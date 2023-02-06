resource "aws_instance" "newclass-ec2-server" {
  instance_type = "t2.micro"
  ami = "ami-0b5eea76982371e91"
  depends_on = [aws_security_group.newclass-ec2-server-sg]
  vpc_security_group_ids = [aws_security_group.newclass-ec2-server-sg.id]
  count = 3
  tags = {
    Name = "newclass-ec2-server-$[count.index]"
  }
}


resource "aws_security_group" "newclass-ec2-server-sg" {
  name = "newclass-ec2-server-sg"
  description = "Allow SSH Access"


ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["106.213.72.234/32"] #Change IP Address as per your need
  }

}