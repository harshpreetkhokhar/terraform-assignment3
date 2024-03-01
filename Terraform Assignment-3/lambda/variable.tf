variable "lambda_role_arn" {
  description = "ARN of the IAM role for the Lambda function"
  type = string
}
variable "sns_arn" {
    type = string
}
variable "tags" {
  type = map(string)
}
variable "runtime" {
  type=string
}
variable "fun_name" {
  type=string
}
variable "principal" {
  type=string
}
variable "lambda-action" {
  type=string
}
variable "stmt_id" {
  type=string
}
variable "type-datasource" {
  type = string
}