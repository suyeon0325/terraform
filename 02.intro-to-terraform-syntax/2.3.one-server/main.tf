provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-02d081c743d676996"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}