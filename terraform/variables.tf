variable "name" {
  default     = ""
  description = "Name of the repository."
}

variable "image_tag_mutability" {
  default     = "MUTABLE"
  description = "Tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE"
}

variable "scan_on_push" {
  default     = "true"
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
}

variable "region" {}

variable "environment" {}

variable "business_owner" {
  default = "banking"
}

variable "application" {
  default = ""
}

variable "tags" {
  description = "(Optional) Key-value mapping of resource tags."
  default     = {}
}

variable "service" {
  default     = ""
  description = "Service that application is part of, e.g. 'transaction', 'payout'"
}

/* ECR LIFECYCLE POLICY  */
variable "priority" {
  type    = number
  default = "1"
}

variable "description" {
  type    = string
  default = "Keep the last 5 images in the repository."
}

variable "tag_status" {
  type    = string
  default = "any"
}

variable "count_type" {
  type    = string
  default = "imageCountMoreThan"
}

variable "count_number" {
  type    = number
  default = "5"
}

variable "action_type" {
  type    = string
  default = "expire"
}
