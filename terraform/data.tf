data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "template_file" "ecr_default_policy" {
  template = "${file("${path.module}/templates/ecr-policy-default.json")}"

  vars = {
    priority     = var.priority
    description  = var.description
    tag_status   = var.tag_status
    count_type   = var.count_type
    count_number = var.count_number
    action_type  = var.action_type
  }
}