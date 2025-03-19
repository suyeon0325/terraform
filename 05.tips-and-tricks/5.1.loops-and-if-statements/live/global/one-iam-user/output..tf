output "neo_arn" {
    value  = aws_iam_user.example[0].arn
    description = "The ARN for user Neo"
}

output "trinity_arn" {
    value  = aws_iam_user.example[1].arn
    description = "The ARN for user trinity"
}

output "morpheus_arn" {
    value  = aws_iam_user.example[2].arn
    description = "The ARN for user morpheus"
}

output "all_arn" {
    value  = aws_iam_user.example[*].arn
    description = "The ARN for user Neo"
}