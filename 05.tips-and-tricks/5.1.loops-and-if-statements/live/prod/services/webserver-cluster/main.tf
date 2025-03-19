provider "aws" {
  region = "ap-northeast-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 5.0"
}

module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  cluster_name           = var.cluster_name
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = var.db_remote_state_key

  instance_type        = "m5.large"
  min_size             = 2
  max_size             = 10
  enable_autoscaling   = true

  custom_tags = {
    Owner      = "team-foo"
    DeployedBy = "terraform"
  }

}

