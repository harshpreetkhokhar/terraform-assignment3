variable "tags" {
  type = map(string)
}
variable "iam-role_name" {
  type=string
}
variable "iam_policy-name" {
  type=string
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
variable "sns_topic_name" {
 type =  string
}
variable "sub_protocol" {
  type=string
}