
resource "aws_vpc" "webvpc" {

  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.webvpc_name
      }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.webvpc.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.webvpc.id
  cidr_block              = var.public_sn_cidr_block1
  map_public_ip_on_launch = true
  availability_zone       = ["ap-northeast-2a"]

  tags = {
    Name = var.public_sn_name1
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.webvpc.id
  cidr_block              = var.public_sn_cidr_block2
  map_public_ip_on_launch = true
  availability_zone       = ["ap-northeast-2c"]

  tags = {
    Name = var.public_sn_name1
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.webvpc.id
  cidr_block        = var.sn_cidr
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "PrivateSubnet1"
  }
}
