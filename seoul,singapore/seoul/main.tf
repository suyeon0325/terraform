provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

module "${national_name}-infra" {
  source = "../modules/infra"

  vpc_cidr_block = 10.1.0.0/16
  webvpc_name = "${natioanl_name}-vpc"
  igw_name = "${national_name}-vpc"

  public_sn_name1 = "${national_name}-public_sn1"
  public_sn_name1 = "${national_name}-public_sn2"

  public_sn_cidr_block1 = 10.1.1.0/24
  public_sn_cidr_block2 = 10.1.2.0/24
  public_sn_cidr_block1 = 10.1.3.0/24
  public_sn_cidr_block1 = 10.1.4.0/24

  

}