variable "s3_buckets" {
  default = ["my-bucket-1", "my-bucket-2"]
}

locals {
  s3_arns = join("\",\n\"", [for bucket in var.s3_buckets : "arn:aws:s3:::${bucket}"])
}

output "s3_policy" {
  value = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": [
        "${local.s3_arns}"
      ]
    }
  ]
}
EOT
}