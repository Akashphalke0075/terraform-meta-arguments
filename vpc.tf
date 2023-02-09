resource "aws_vpc" "class-us-vpc" {
cidr_block = "32.52.62.22/32"
}

resource "aws_vpc" "class-europe-vpc" {
cidr_block = "32.52.54.12/32"
provider = aws.aws-eu-region
}