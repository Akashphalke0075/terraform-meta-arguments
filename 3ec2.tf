resource "aws_instance" "class-ec2-server" {
    instance_type = "t2.micro"
    ami = "ami-0b5eea76982371e91"
    depends_on = [security_group.class-ec2-server-sg]
    vpc_security_group_ids = [security_group.class-ec2-server-sg.id]
    tags {
        "Name" = "5class-ec2-server"
    }
}

resource "security_group" "class-ec2-server-sg" {
    name = "class-ec2-server-sg"
    description = "Allow SSH access"
}
