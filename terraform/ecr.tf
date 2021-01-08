/* For more details on the configuration, visit the official documentation::
https://www.terraform.io/docs/providers/aws/r/ecr_repository.html
*/

resource "aws_ecr_repository" "ecr" {
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = var.tags
}

resource "aws_ecr_lifecycle_policy" "lifecycle" {
  repository = aws_ecr_repository.ecr.name

  policy = data.template_file.ecr_default_policy.rendered
}