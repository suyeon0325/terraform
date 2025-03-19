provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

module "모듈이름" {
  source = "../modules/services/webserver-cluster"

}