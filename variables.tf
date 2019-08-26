variable "terraform_version" {
  type        = "string"
  description = "The terraform version which will be used"
}

variable "product_domain" {
  type        = "string"
  description = "The name of the product domain"
}

variable "environment" {
  type        = "string"
  description = "The environment which applied"
}

variable "source_repository_url" {
  type        = "string"
  description = "The source repository URL"
}

variable "compute_type" {
  type        = "string"
  default     = "BUILD_GENERAL1_SMALL"
  description = "The builder instance class"
}

variable "image" {
  type        = "string"
  default     = "traveloka/codebuild-terraform-ci-cd-image:v0.1.9"
  description = "Docker image used by CodeBuild"
}

variable "image_pull_credentials_type" {
  type        = "string"
  default     = "CODEBUILD"
  description = "The type of credentials AWS CodeBuild uses to pull images in your build"
}

variable "image_pull_credentials_secret_manager_arn" {
  type        = "string"
  default     = ""
  description = "ARN to the secret in the AWS secret manage if image_pull_credentials_type is SERVICE_ROLE"
}


variable "github_app_id" {
  type        = "string"
  default     = "18429"
  description = "Terraform CI/CD Github App ID"
}

variable "github_app_installation_id" {
  type        = "string"
  default     = "361093"
  description = "Terraform CI/CD Github App Installation ID"
}

######
# CI #
######
variable "ci_env_var" {
  type = "list"

  default = []

  description = "Environment variables for CI"
}

variable "ci_install_commands" {
  type = "list"

  default = []

  description = "Commands for CI's install phase"
}

variable "ci_pre_build_commands" {
  type = "list"

  default = []

  description = "Commands for CI's pre_build phase"
}

variable "ci_build_commands" {
  type = "list"

  default = []

  description = "Commands for CI's build phase"
}

variable "ci_post_build_commands" {
  type = "list"

  default = []

  description = "Commands for CD's post_build phase"
}

######
# CD #
######
variable "cd_env_var" {
  type = "list"

  default = []

  description = "Environment variables for CD"
}

variable "cd_install_commands" {
  type = "list"

  default = []

  description = "Commands for CD's install phase"
}

variable "cd_pre_build_commands" {
  type = "list"

  default = []

  description = "Commands for CD's pre_build phase"
}

variable "cd_build_commands" {
  type = "list"

  default = []

  description = "Commands for CD's build phase"
}

variable "cd_post_build_commands" {
  type = "list"

  default = []

  description = "Commands for CD's post_build phase"
}
