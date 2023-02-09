# resource "aws_eip" "elastic-ec2-ip"{
#   depends_on = [aws_instance.best-sec-ec2]
#   instance = aws_instance.best-sec-ec2.id
# }