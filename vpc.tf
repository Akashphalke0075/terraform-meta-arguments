resource "aws_vpc" "class-ec2-vpc" {
cidr_blocks = "32.52.62.22/32"
}

resource "aws_vpc" "class-ec2-vpc" {
cidr_blocks = "32.52.54.12/32"
provider = aws.aws-eu-region
}