resource "aws_vpc" "class-us-vpc" {
cidr_block = "10.10.80.0/22"
}

resource "aws_vpc" "class-europe-vpc" {
cidr_block = "10.10.80.0/22"
provider = aws.aws-eu-region
}