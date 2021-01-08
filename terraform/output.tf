output "ecr_arn" {
  value       = aws_ecr_repository.ecr.arn
  description = "ARN of the repository."
}

output "ecr_name" {
  value       = aws_ecr_repository.ecr.name
  description = "Name of the repository."
}

output "ecr_registry_id" {
  value       = aws_ecr_repository.ecr.registry_id
  description = "Registry ID where the repository was created."
}

output "ecr_repository_url" {
  value       = aws_ecr_repository.ecr.repository_url
  description = "URL of the repository."
}

/* ECR LIFECYCLE POLICY */
output "ecr_lifecycle_repository" {
  value       = aws_ecr_lifecycle_policy.lifecycle.repository
  description = "Name of the repository."
}

output "ecr_lifecycle_registry_id" {
  value       = aws_ecr_lifecycle_policy.lifecycle.registry_id
  description = "Registry ID where the repository was created."
}