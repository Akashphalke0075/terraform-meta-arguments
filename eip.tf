resource "aws_eip" "class-ec2-elastic" {
    depends_on = [aws_instance.newclass-ec2-server]
    instance = aws_instance.newclass-ec2-server.id
}