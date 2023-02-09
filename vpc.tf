resource "aws_vpc" "class-us-vpc" {
cidr_block = "32.52.62.22/22"
}

resource "aws_vpc" "class-europe-vpc" {
cidr_block = "32.52.54.12/22"
provider = aws.aws-eu-region
}