provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 5.0"
}

resource "aws_iam_user" "example" {
  count = length(var.user_name)
  name = var.user_name[count.index]

}