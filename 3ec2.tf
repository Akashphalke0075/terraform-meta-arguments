resource "aws_instance" "best-sec-ec2" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"
    depends_on = [aws_security_group.best-sec-ec2-sg1]
    vpc_security_group_ids = [aws_security_group.best-sec-ec2-sg1.id]
    tags = {
        Name = "first-instance"
    }
}

resource "aws_security_group" "best-sec-ec2-sg1" {
    name = "best-sec-ec2-sg1"
    description = "Allow SSH Access"

ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["106.213.72.234/32"]
}

}

resource "aws_instance" "best-sec-eu" {
    ami = "ami-0fe0b2cf0e1f25c8a"
    instance_type = "t2.micro"
    #depends_on = [aws_security_group.best-sec-ec2-sg1]
    #vpc_security_group_ids = [aws_security_group.best-sec-ec2-sg1.id]
    provider = aws.aws-eu-region
    tags = {
        Name = "europe-instance"
    }
}
