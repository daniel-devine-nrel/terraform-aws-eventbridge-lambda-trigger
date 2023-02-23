variable "lambda_config" {
  type = list(object({
    lambda_name         = string
    lambda_arn          = string
    lambda_role_arn     = string
    schedule_expression = string
  }))
  description = "List of configurations for lambda functions to build triggers for."
}

variable "timezone" {
  type        = string
  default     = "UTC"
  description = "Timezone for AWS EventBrige cron expressions"
}

variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region"
}